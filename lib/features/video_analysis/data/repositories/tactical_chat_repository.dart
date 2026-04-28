import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lavagna_tattica/features/video_analysis/data/models/scout_statistics.dart';
import 'package:lavagna_tattica/features/video_analysis/data/models/chat_message.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

final tacticalChatRepositoryProvider = Provider<TacticalChatRepository>((ref) {
  final apiKey = dotenv.env['GEMINI_API_KEY'] ?? '';
  return TacticalChatRepository(apiKey: apiKey); 
});

class TacticalChatRepository {
  final String _apiKey;
  final List<ChatMessage> _history = [];
  ScoutStatistics? _analysisContext;

  TacticalChatRepository({required String apiKey}) : _apiKey = apiKey;

  void setContext(ScoutStatistics analysis) {
    _analysisContext = analysis;
    _history.clear();
  }

  List<ChatMessage> get history => List.unmodifiable(_history);

  Future<String> sendMessage(String userMessage) async {
    if (_analysisContext == null) {
      throw Exception('Contesto analisi non impostato');
    }

    _history.add(ChatMessage(role: ChatRole.user, text: userMessage));

    // Strategia di fallback per la chat (simile all'analisi)
    final chatFallbacks = [
      'gemini-flash-lite-latest',
      'gemini-2.0-flash-lite',
      'gemini-flash-latest',
      'gemini-2.0-flash',
    ];

    String? lastResponse;
    String? lastErr;

    for (final model in chatFallbacks) {
      try {
        final prompt = _buildChatPrompt(userMessage);
        lastResponse = await _sendRestRequest(model, prompt);
        
        if (lastResponse.isNotEmpty) {
          _history.add(ChatMessage(role: ChatRole.model, text: lastResponse));
          return lastResponse;
        }
      } catch (e) {
        lastErr = e.toString();
        debugPrint('Tentativo chat con $model fallito: $e');
        
        // Se è un errore di quota, aspettiamo un po'
        if (lastErr.contains('429') || lastErr.contains('503')) {
          await Future.delayed(const Duration(seconds: 3));
        }
      }
    }

    throw Exception('La chat ha fallito tutti i tentativi di risposta. Ultimo errore: $lastErr');
  }

  String _buildChatPrompt(String query) {
    final contextJson = jsonEncode(_analysisContext!.toJson());
    
    return '''
      Tu sei un Match Coach esperto di Calcio a 5 (Futsal).
      Hai a disposizione l'analisi tecnica di una partita in formato JSON:
      
      $contextJson
      
      Rispondi alla seguente domanda dell'utente basandoti ESCLUSIVAMENTE sui dati sopra riportati.
      Sii tecnico, preciso e motivante. Se i dati non contengono l'informazione richiesta, dillo chiaramente.
      
      Domanda: $query
    ''';
  }

  Future<String> _sendRestRequest(String model, String prompt) async {
    final url = Uri.parse('https://generativelanguage.googleapis.com/v1beta/models/$model:generateContent?key=$_apiKey');
    
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "contents": [
          {
            "parts": [{"text": prompt}]
          }
        ],
        "generationConfig": {
          "temperature": 0.7,
          "topP": 0.95,
          "maxOutputTokens": 800
        }
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      return data['candidates'][0]['content']['parts'][0]['text'] as String;
    } else {
      throw Exception('Fallito invio messaggio chat: ${response.statusCode} ${response.body}');
    }
  }
}
