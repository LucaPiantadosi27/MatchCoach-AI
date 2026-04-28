import 'dart:io';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import '../models/match_analysis_model.dart';
import '../models/scout_statistics.dart';

final aiAnalysisRepositoryProvider = Provider<AiAnalysisRepository>((ref) {
  // Estrai in tutta sicurezza l'API KEY protetta dal runtime file
  final apiKey = (dotenv.env['GEMINI_API_KEY'] ?? '').trim();
  return AiAnalysisRepository(apiKey: apiKey);
});

class AiAnalysisRepository {
  final String _apiKey;
  late final GenerativeModel _model;

  AiAnalysisRepository({required String apiKey}) : _apiKey = apiKey {
    _model = GenerativeModel(
      // Gemini 2.0 Flash - confermato disponibile tramite ListModels API
      model: 'gemini-2.0-flash',
      apiKey: _apiKey,
      generationConfig: GenerationConfig(
        temperature: 0.1,
      ),
      requestOptions: const RequestOptions(apiVersion: 'v1'),
    );
  }

  /// Caricamento tramite Gemini File API (Resumable Streaming Upload)
  Future<String> _uploadLargeVideo(XFile videoFile) async {
    final length = await videoFile.length();
    const mimeType = 'video/mp4';

    // 1. Inizia sessione Resumable Upload (Il File API richiede v1beta)
    final urlStart = Uri.parse('https://generativelanguage.googleapis.com/upload/v1beta/files?key=$_apiKey');
    
    // Custom Headers per l'API Google
    final headers = {
      'X-Goog-Upload-Protocol': 'resumable',
      'X-Goog-Upload-Command': 'start',
      'X-Goog-Upload-Header-Content-Length': length.toString(),
      'X-Goog-Upload-Header-Content-Type': mimeType,
      'Content-Type': 'application/json',
    };
    
    final body = jsonEncode({
      "file": {"display_name": "Match Video ${DateTime.now().millisecondsSinceEpoch}"}
    });

    final resStart = await http.post(urlStart, headers: headers, body: body);
    
    if (resStart.statusCode != 200) {
      throw Exception('Fallito l\'inizio dell\'upload verso Gemini: ${resStart.statusCode} ${resStart.body}');
    }

    final uploadUrlStr = resStart.headers['x-goog-upload-url'];
    if (uploadUrlStr == null) {
      throw Exception('URL di upload resumable mancante negli headers della risposta.');
    }

    // 2. Esegui il vero upload via Stream
    // Evita crash per Out Of Memory sui video pesanti (da GigaBytes).
    final uploadUrl = Uri.parse(uploadUrlStr);
    final request = http.StreamedRequest('POST', uploadUrl);
    
    request.headers.addAll({
      'Content-Length': length.toString(),
      'X-Goog-Upload-Offset': '0',
      'X-Goog-Upload-Command': 'upload, finalize',
    });

    final fileStream = videoFile.openRead();
    fileStream.listen(
      (chunk) => request.sink.add(chunk),
      onDone: () => request.sink.close(),
      onError: (e) => request.sink.addError(e),
    );

    final response = await request.send();
    final stringResponse = await response.stream.bytesToString();

    if (response.statusCode != 200) {
      throw Exception('Upload del file fallito. Codice stato: ${response.statusCode}\n $stringResponse');
    }

    final Map<String, dynamic> data = jsonDecode(stringResponse);
    final fileObj = data['file'];
    
    // Ritorna il "name" che identifica il file nel backend di Google per il Polling
    return fileObj['name']; 
  }

  /// Attende la disponibilità del file processato dai supercomputer
  Future<String> _waitForFileActive(String fileName) async {
    int attempts = 0;
    const maxAttempts = 60; // Max 5 minuti (5s * 60)

    while (attempts < maxAttempts) {
      final url = Uri.parse('https://generativelanguage.googleapis.com/v1beta/$fileName?key=$_apiKey');
      final res = await http.get(url);
      
      if (res.statusCode == 200) {
        final data = jsonDecode(res.body);
        final state = data['state'];

        if (state == 'ACTIVE') {
          return data['uri'];
        } else if (state == 'FAILED') {
          throw Exception('L\'elaborazione del video su Google è fallita (Stato: FAILED).');
        }
        
        // PROCESSING attende per digerire il video
        await Future.delayed(const Duration(seconds: 5));
        attempts++;
      } else {
        throw Exception('Errore nel polling del file: HTTP ${res.statusCode}');
      }
    }
    throw Exception('Timeout: Il video ha impiegato troppo tempo per essere elaborato (oltre 5 minuti).');
  }

  /// Analizza finalmente la partita processando le statistiche json
  Future<ScoutStatistics> analyzeMatchVideo(XFile videoFile) async {
    if (_apiKey.isEmpty) {
      throw Exception(
        'GEMINI_API_KEY non configurata.\n\n'
        'Passi per configurare:\n'
        '1. Vai su https://aistudio.google.com/app/apikey\n'
        '2. Crea una nuova API key\n'
        '3. Copia il file .env.example in .env\n'
        '4. Incolla la tua API key nel file .env\n'
        '5. Riavvia l\'app'
      );
    }

    try {
      final length = await videoFile.length();
      
      // Per il web, se il video è piccolo (< 20MB), usiamo l'approccio inline (DataPart) per velocità.
      // Altrimenti (video grande o non su Web), usiamo il File API (Resumable Upload).
      if (kIsWeb && length < 20 * 1024 * 1024) {
        return await _analyzeVideoWeb(videoFile);
      }
      
      // Default: Inietta il Video nei server via File API saltando la RAM app
      final fileName = await _uploadLargeVideo(videoFile);

      // 2. Poll & Wait per poterlo elaborare
      final fileUri = await _waitForFileActive(fileName);

      // 2b. Piccolo delay extra per la propagazione nei server Google (cruciale per il Web)
      await Future.delayed(const Duration(seconds: 2));

      // 3. Prompt di estrazione IA 
      final promptText = '''
        Analizza questo video di una partita di futsal (calcio a 5).
        Estrapola le statistiche tattiche essenziali e restituisci rigorosamente SOLO un oggetto JSON valido 
        con la struttura richiesta (come nel prompt di guida).
      ''';

      // 4. Strategia di Fallback Avanzata: Priorità ai modelli "Lite" per evitare errori di quota (429)
      final fallbacks = [
        {'ver': 'v1beta', 'model': 'gemini-flash-lite-latest', 'key': 'file_data'},
        {'ver': 'v1beta', 'model': 'gemini-2.0-flash-lite', 'key': 'file_data'},
        {'ver': 'v1beta', 'model': 'gemini-flash-latest', 'key': 'file_data'},
        {'ver': 'v1beta', 'model': 'gemini-2.0-flash', 'key': 'file_data'},
        {'ver': 'v1beta', 'model': 'gemini-pro-latest', 'key': 'file_data'},
      ];

      String? rawText;
      String? lastError;

      for (final config in fallbacks) {
        final ver = config['ver'];
        final model = config['model'];
        final fileKey = config['key'];
        
        try {
          final url = Uri.parse('https://generativelanguage.googleapis.com/$ver/models/$model:generateContent?key=$_apiKey');
          
          final body = jsonEncode({
            "contents": [
              {
                "parts": [
                  {"text": _buildAnalysisPrompt()},
                  {
                    fileKey: {
                      "mime_type": "video/mp4",
                      "file_uri": fileUri
                    }
                  }
                ]
              }
            ],
            "generationConfig": {
              "temperature": 0.1
            }
          });

          final response = await http.post(
            url,
            headers: {'Content-Type': 'application/json'},
            body: body,
          );

          if (response.statusCode == 200) {
            final Map<String, dynamic> responseData = jsonDecode(response.body);
            rawText = responseData['candidates'][0]['content']['parts'][0]['text'] as String?;
            if (rawText != null && rawText.isNotEmpty) {
              debugPrint('Successo con configurazione: $ver / $model / $fileKey');
              break; 
            }
          } else {
            lastError = 'Tentativo $ver/$model fallito: ${response.statusCode} ${response.body}';
            debugPrint(lastError);
            
            // Per 429 o 503, aspettiamo 5 secondi prima di passare al prossimo modello
            if (response.statusCode == 429 || response.statusCode == 503) {
              debugPrint('Quota esaurita o server carico, attesa 5 secondi...');
              await Future.delayed(const Duration(seconds: 5));
            }
          }
        } catch (e) {
          lastError = 'Tentativo $ver/$model errore: $e';
          debugPrint(lastError);
        }
      }

      if (rawText == null || rawText.isEmpty) {
        throw Exception('Analisi fallita dopo tutti i tentativi di fallback. Ultimo errore: $lastError');
      }

      // 5. Estrazione robusta del JSON
      String cleanedText = rawText;
      final startIndex = rawText.indexOf('{');
      final endIndex = rawText.lastIndexOf('}');
      
      if (startIndex != -1 && endIndex != -1) {
        cleanedText = rawText.substring(startIndex, endIndex + 1);
      } else {
        cleanedText = rawText.replaceAll(RegExp(r'```json\n|```json|```'), '').trim();
      }

      try {
        final Map<String, dynamic> data = jsonDecode(cleanedText);
        return ScoutStatistics.fromJson(data);
      } catch (e) {
        debugPrint('JSON ricevuto: $cleanedText');
        throw Exception('Errore nel formato dei dati restituiti dall\'IA: $e');
      }

    } catch (e) {
       throw Exception('Errore durante l\'analisi AI: $e');
    }
  }

  Future<ScoutStatistics> _analyzeVideoWeb(XFile videoFile) async {
    try {
      final videoBytes = await videoFile.readAsBytes();
      final prompt = _buildAnalysisPrompt();
      final videoPart = DataPart('video/mp4', videoBytes);
      
      final response = await _model.generateContent([
        Content.multi([TextPart(prompt), videoPart])
      ]);

      final rawText = response.text;
      if (rawText == null || rawText.isEmpty) {
        throw Exception('Risposta vuota da Gemini.');
      }

      String cleanedText = rawText;
      final startIndex = rawText.indexOf('{');
      final endIndex = rawText.lastIndexOf('}');
      if (startIndex != -1 && endIndex != -1) {
        cleanedText = rawText.substring(startIndex, endIndex + 1);
      }

      final Map<String, dynamic> data = jsonDecode(cleanedText);
      return ScoutStatistics.fromJson(data);
    } catch (e) {
      throw Exception('Errore nell\'analisi video web: $e');
    }
  }

  /// Costruisce il prompt di analisi (riutilizzabile)
  String _buildAnalysisPrompt() {
    return '''
Analizza questo video di una partita di futsal (calcio a 5).
Estrapola le statistiche tattiche essenziali e restituisci rigorosamente SOLO un oggetto JSON valido 
con la seguente struttura, non inserire tag markdown "```json" all'inizio o blockquote, ma UNICAMENTE il DATO raw.
Usa i seguenti dati fittizi come guida per il formato di output da compilare:

{
  "homeTeam": {
    "teamName": "Squadra Casa",
    "possessionAndBuildUp": {
      "totalPossessionPercent": 55,
      "possessionByZone": {"defense": 20, "midfield": 50, "attack": 30},
      "averagePossessionTimeSeconds": 10.2,
      "totalPossessions": 50,
      "averagePassesPerPossession": 5.1,
      "possessionsType": {"sterile": 20, "productive": 30},
      "passes": {
        "total": 210,
        "accuracyPercent": 88,
        "direction": {"forward": 70, "lateral": 120, "backward": 20},
        "betweenLines": 15,
        "keyPasses": 8,
        "underPressure": 30,
        "oneTouch": 50,
        "twoPlusTouches": 160,
        "longSequences": 10
      },
      "progression": {
        "ballCarries": 25,
        "dribbles": {"successful": 10, "failed": 4},
        "defensiveLineBreaks": 8,
        "finalThirdEntries": 18
      }
    },
    "offensivePhase": {
      "shots": {
        "total": 16,
        "onTarget": 10,
        "offTarget": 4,
        "blocked": 2,
        "xG": 2.5,
        "insideArea": 11,
        "outsideArea": 5,
        "fromSetPieces": 4
      },
      "creation": {
        "chancesCreated": 12,
        "bigChances": 4,
        "assists": 2,
        "preAssists": 2,
        "offensive1v1Won": 6,
        "offBallCuts": 15
      },
      "mostDangerousPlayer": {
        "name": "Pivot 1",
        "shotsGenerated": 5,
        "individualXG": 1.2,
        "chancesCreated": 4,
        "dribblesSuccessful": 5,
        "offensiveInvolvementPercent": 40
      }
    },
    "defensivePhase": {
      "pressureAndRecovery": {
        "ballRecoveries": 28,
        "recoveryZones": {"high": 8, "medium": 12, "low": 8},
        "pressing": {"successful": 10, "failed": 5},
        "averageRecoveryTimeSeconds": 12.5
      },
      "duels": {
        "defensiveWon": 20,
        "defensiveLost": 8,
        "successfulTackles": 15,
        "interceptions": 10,
        "shotsBlocked": 5,
        "defensive1v1": 8
      },
      "structure": {
        "defensiveLine": "high",
        "compactness": "alta",
        "defensiveRotations": "eccellenti",
        "criticalErrors": 1
      }
    },
    "transitions": {
      "offensive": {
        "counterAttacks": 8,
        "developmentSpeed": "molto rapida",
        "outcomes": {"shots": 4, "goals": 1, "lostBalls": 3}
      },
      "defensive": {
        "recoveryTimeSeconds": 3.8,
        "tacticalFouls": 2,
        "goalsConcededInTransition": 0
      }
    },
    "playersAnalysis": [
      {
        "name": "Laterale 1",
        "technical": {"touches": 50, "successfulPasses": 42, "dribbles": 4, "shots": 3, "possessionLost": 5},
        "tactical": {"averagePosition": "ala sinistra", "zonesOccupied": ["fascia sinistra"], "offBallMovements": "continui", "teammateConnections": ["Pivot"]},
        "efficiency": {"dangerIndex": 9.0, "criticalErrors": 0, "decisionMaking": "propositivo"}
      }
    ],
    "spatialAnalysis": {
      "teamHeatmap": "prevalenza attacco",
      "mostUsedZones": ["meta campo avversaria"],
      "chanceCreationZones": ["area di rigore"],
      "recoveryZones": ["metà campo"],
      "spaceOccupation": {"widthUsage": "eccellente", "depthUsage": "costante", "betweenLinesPlay": "efficace"}
    },
    "teamTactics": {
      "system": {"starting": "3-1", "changes": []},
      "possession": {"buildUp": "elaborata", "rotations": "dinamiche", "pivotUsage": "centrale"},
      "defense": {"pressing": "ultra-offensivo", "style": "a uomo"}
    },
    "setPieces": {
      "cornersTaken": 6,
      "cornerRoutines": 4,
      "freeKicks": 3,
      "accumulatedFouls": 4,
      "doublePenalties": 0
    },
    "decisionMaking": {
      "underPressureChoices": "calme",
      "gameTempo": "serrato",
      "unforcedErrors": 4,
      "superiorityChoices": "ottime"
    },
    "intensityAndTempo": {
      "gameSpeed": "molto alta",
      "actionsPerMinute": 3.5,
      "tempoChanges": "efficaci",
      "pressure": "costante"
    },
    "advancedIndicators": {
      "teamXG": 2.5,
      "teamXA": 1.8,
      "ppda": 6.2,
      "possessionsPerShot": 3.1,
      "offensiveEfficiencyPercent": 20,
      "defensiveEfficiencyPercent": 10
    },
    "scoutInsights": {
      "lineBreakers": ["Laterale 1"],
      "superiorityCreators": ["Pivot 1"],
      "gameSlowers": [],
      "gameAccelerators": ["Laterale 2"],
      "recurrentPatterns": ["taglio sul secondo palo"],
      "weaknesses": ["poca copertura su tiri liberi"]
    }
  },
  "awayTeam": {
    "teamName": "Squadra Ospite",
    "possessionAndBuildUp": {
      "totalPossessionPercent": 45,
      "possessionByZone": {"defense": 40, "midfield": 40, "attack": 20},
      "averagePossessionTimeSeconds": 7.5,
      "totalPossessions": 42,
      "averagePassesPerPossession": 3.5,
      "possessionsType": {"sterile": 30, "productive": 12}
    },
    "offensivePhase": { "shots": { "total": 10, "xG": 1.2 } },
    "defensivePhase": { "pressureAndRecovery": { "ballRecoveries": 35 } },
    "advancedIndicators": { "teamXG": 1.2, "teamXA": 0.8 }
  },
  "reportSummary": {
    "overview": "Match equilibrato ma vinto...",
    "analysis": "Dettaglio...",
    "strengthsAndWeaknesses": "...",
    "conclusions": "..."
  }
}
''';
  }
}
