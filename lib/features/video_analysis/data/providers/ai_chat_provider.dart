import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:record/record.dart';
import 'package:path_provider/path_provider.dart';

import 'ai_analysis_repository.dart';

/// Define a simple message structure for our chat UI
class ChatMessage {
  final String text;
  final bool isUser;
  final DateTime timestamp;

  ChatMessage({
    required this.text,
    required this.isUser,
    required this.timestamp,
  });
}

/// State for the chat provider
class AiChatState {
  final List<ChatMessage> messages;
  final bool isLoading;
  final bool isRecording;
  final String? error;

  AiChatState({
    this.messages = const [],
    this.isLoading = false,
    this.isRecording = false,
    this.error,
  });

  AiChatState copyWith({
    List<ChatMessage>? messages,
    bool? isLoading,
    bool? isRecording,
    String? error,
  }) {
    return AiChatState(
      messages: messages ?? this.messages,
      isLoading: isLoading ?? this.isLoading,
      isRecording: isRecording ?? this.isRecording,
      error: error,
    );
  }
}

final aiChatProvider = StateNotifierProvider.family<AiChatNotifier, AiChatState, String>((ref, geminiFileId) {
  return AiChatNotifier(
    apiKey: String.fromEnvironment('GEMINI_API_KEY', defaultValue: ''),
    geminiFileId: geminiFileId,
  );
});

class AiChatNotifier extends StateNotifier<AiChatState> {
  final String apiKey;
  final String geminiFileId; // The ID of the generic video file analyzed
  late final GenerativeModel _model;
  late final ChatSession _chatSession;
  late final AudioRecorder _audioRecorder;

  AiChatNotifier({
    required this.apiKey,
    required this.geminiFileId,
  }) : super(AiChatState()) {
    _initModel();
    _audioRecorder = AudioRecorder();
  }

  void _initModel() {
    _model = GenerativeModel(
      model: 'gemini-1.5-pro',
      apiKey: apiKey,
    );
    // Avviamo una sessione di chat passando potenzialmente l'ID del file come storia
    // In scenarios with the actual File API, you define history containing the video file reference.
    _chatSession = _model.startChat(history: [
      /*
      Content('user', [
        TextPart('Usa questo video come contesto base per le mie domande sulla partita.'),
        // FileData('video/mp4', 'uri-from-google-ai-file-api')
      ])
      */
    ]);
  }

  Future<void> sendMessage(String text) async {
    if (text.trim().isEmpty) return;

    _addMessage(ChatMessage(text: text, isUser: true, timestamp: DateTime.now()));
    state = state.copyWith(isLoading: true, error: null);

    try {
      final response = await _chatSession.sendMessage(Content.text(text));
      final responseText = response.text ?? 'Nessuna risposta dal modello.';
      
      _addMessage(ChatMessage(text: responseText, isUser: false, timestamp: DateTime.now()));
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Errore generico chat: \$e',
      );
    }
  }

  // --- AUDIO RECORDING ---

  Future<void> startRecording() async {
    try {
      if (await _audioRecorder.hasPermission()) {
        final tempDir = await getTemporaryDirectory();
        final path = '\${tempDir.path}/audio_\${DateTime.now().millisecondsSinceEpoch}.m4a';
        
        await _audioRecorder.start(
          const RecordConfig(encoder: AudioEncoder.aacLc),
          path: path,
        );
        state = state.copyWith(isRecording: true, error: null);
      } else {
        state = state.copyWith(error: 'Permessi microfono negati');
      }
    } catch (e) {
      state = state.copyWith(error: 'Errore avvio registrazione: \$e');
    }
  }

  Future<void> stopRecordingAndSend() async {
    try {
      final path = await _audioRecorder.stop();
      state = state.copyWith(isRecording: false);

      if (path != null) {
        // Here we could either use Gemini to transcribe & answer or just transcribe
        // Gemini 1.5 Pro natively supports audio input!
        _sendAudioMessage(File(path));
      }
    } catch (e) {
      state = state.copyWith(isRecording: false, error: 'Errore stop registrazione: \$e');
    }
  }

  Future<void> _sendAudioMessage(File audioFile) async {
    state = state.copyWith(isLoading: true, error: null);
    
    // Mostriamo un messaggio simbolico lato utente per l'audio
    _addMessage(ChatMessage(
      text: '🎤 [Nota vocale inviata]',
      isUser: true,
      timestamp: DateTime.now(),
    ));

    try {
      final audioBytes = await audioFile.readAsBytes();
      final audioPart = DataPart('audio/mp4', audioBytes); // .m4a 
      
      final response = await _model.generateContent([
        Content.multi([
          TextPart('Ascolta questo audio e rispondi basandoti sul video della partita.'),
          audioPart
        ])
      ]);

      final responseText = response.text ?? 'Nessuna risposta dal modello per audio.';
      
      _addMessage(ChatMessage(
        text: responseText,
        isUser: false,
        timestamp: DateTime.now(),
      ));
      
      state = state.copyWith(isLoading: false);
    } catch (e) {
       state = state.copyWith(isLoading: false, error: 'Errore invio audio: \$e');
    }
  }

  void _addMessage(ChatMessage message) {
    state = state.copyWith(messages: [...state.messages, message]);
  }

  @override
  void dispose() {
    _audioRecorder.dispose();
    super.dispose();
  }
}
