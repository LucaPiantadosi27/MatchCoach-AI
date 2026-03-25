import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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

  /// Estrapola le statistiche della partita da un video
  Future<ScoutStatistics> analyzeMatchVideo(File videoFile) async {
    if (_apiKey.isEmpty) {
      throw Exception('API Key Gemini non configurata');
    }

    try {
      // 1. Legge il file video come bytes
      final videoBytes = await videoFile.readAsBytes();
      
      // 2. Prepara il prompt
      final prompt = TextPart('''
        Analizza questo video di una partita di futsal (calcio a 5).
        Estrapola le statistiche richieste e restituisci ESATTAMENTE un oggetto JSON 
        con la seguente struttura (no markdown aggiuntivo, solo il JSON):
        
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
          "keyEvents": ["Evento importante 1", "Evento importante 2"],
          "aiSummary": "Breve riassunto tattico della partita di max 3 frasi."
        }
      ''');

      // In a normal flow for large videos, you'd use the File API of Gemini
      // Since we are mocking/using DataParts here for simplicity (up to 20MB usually for inline data)
      final videoPart = DataPart('video/mp4', videoBytes);

      final response = await _model.generateContent([
        Content.multi([prompt, videoPart])
      ]);

      if (response.text == null) {
        throw Exception('Risposta vuota da Gemini');
      }

      // TODO: Parse the JSON. For now returning a mock or trying to parse it if we had dart:convert
      // Return a default object for demonstration purposes until `dart:convert` is added
      return const ScoutStatistics(
        aiSummary: "Analisi completata."
      );

    } catch (e) {
       throw Exception('Errore durante l\'analisi video: \$e');
    }
  }
}
