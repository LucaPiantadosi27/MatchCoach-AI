import 'dart:io';
import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../models/match_analysis_model.dart';
import '../models/scout_statistics.dart';

final aiAnalysisRepositoryProvider = Provider<AiAnalysisRepository>((ref) {
  // Estrai in tutta sicurezza l'API KEY protetta dal runtime file
  final apiKey = dotenv.env['GEMINI_API_KEY'] ?? '';
  return AiAnalysisRepository(apiKey: apiKey);
});

class AiAnalysisRepository {
  final String _apiKey;
  late final GenerativeModel _model;

  AiAnalysisRepository({required String apiKey}) : _apiKey = apiKey {
    _model = GenerativeModel(
      model: 'gemini-1.5-pro',
      apiKey: _apiKey,
      generationConfig: GenerationConfig(
        temperature: 0.2, // Low temperature for more deterministic stats
        responseMimeType: 'application/json',
      ),
    );
  }

  /// Caricamento tramite Gemini File API (Resumable Streaming Upload)
  Future<String> _uploadLargeVideo(File videoFile) async {
    final length = await videoFile.length();
    const mimeType = 'video/mp4';

    // 1. Inizia sessione Resumable Upload
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
    while (true) {
      final url = Uri.parse('https://generativelanguage.googleapis.com/v1beta/$fileName?key=$_apiKey');
      final res = await http.get(url);
      
      if (res.statusCode == 200) {
        final data = jsonDecode(res.body);
        final state = data['state'];

        if (state == 'ACTIVE') {
          return data['uri']; // Usa questo "URI" per far guardare il video al modello
        } else if (state == 'FAILED') {
          throw Exception('Purtroppo l\'Upload a Google ha terminato in stato FAILED, video illeggibile.');
        }
        
        // PROCESSING attende per digerire il video (spesso > 10 secondi per i MP4 molto grandi)
        await Future.delayed(const Duration(seconds: 5));
      } else {
        throw Exception('Errore nello status polling polling del file $fileName: HTTP res ${res.statusCode}');
      }
    }
  }

  /// Analizza finalmente la partita processando le statistiche json
  Future<ScoutStatistics> analyzeMatchVideo(File videoFile) async {
    if (_apiKey.isEmpty) {
      throw Exception('Chiave segreta "GEMINI_API_KEY" non è correttamente configurata nel file .env nascosto.');
    }

    try {
      // 1. Inietta il Video nei server saltando la RAM app
      final fileName = await _uploadLargeVideo(videoFile);

      // 2. Poll & Wait per poterlo elaborare
      final fileUri = await _waitForFileActive(fileName);

      // 3. Prompt di estrazione IA 
      final prompt = TextPart('''
        Analizza questo video di una partita di futsal (calcio a 5).
        Estrapola le statistiche tattiche essenziali e restituisci rigorosamente SOLO un oggetto JSON valido 
        con la seguente struttura, non inserire tag markdown "```json" all'inizio o blockquote, ma UNICAMENTE il DATO raw.
        
        {
          "homeGoals": 0,
          "awayGoals": 0,
          "homeShots": 0,
          "awayShots": 0,
          "homeShotsOnTarget": 0,
          "awayShotsOnTarget": 0,
          "homePasses": 0,
          "awayPasses": 0,
          "homePossessionPercentage": 50,
          "awayPossessionPercentage": 50,
          "homeFouls": 0,
          "awayFouls": 0,
          "homeCorners": 0,
          "awayCorners": 0,
          "goalScorers": ["Nome giocatore 1 (Minuto)", "Nome giocatore 2 (Minuto)"],
          "keyEvents": ["Evento tattico importante 1", "Evento focale 2"],
          "aiSummary": "Breve commento e riassunto tattico analitico della partita di max 3/4 frasi."
        }
      ''');

      final videoPart = FileData('video/mp4', fileUri);

      // Scateniamo il Pro model a 1 milion Tokens Requesting
      final response = await _model.generateContent([
        Content.multi([prompt, videoPart])
      ]);

      final rawText = response.text;
      if (rawText == null || rawText.isEmpty) {
        throw Exception('Risposta testuale vuota (blank) o nulla da Gemini.');
      }

      // 4. Bonifica Esterna del JSON (Strippa i Markdown di abbellimento del Modello Base)
      final cleanedText = rawText.replaceAll(RegExp(r'```json\n|```json|```'), '').trim();
      final Map<String, dynamic> data = jsonDecode(cleanedText);

      return ScoutStatistics.fromJson(data);

    } catch (e) {
       throw Exception('Riscontrato un crash letale nel processo di estrazione AI della partita: $e');
    }
  }
}
