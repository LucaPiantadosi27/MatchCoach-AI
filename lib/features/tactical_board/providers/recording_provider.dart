import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/movement_keyframe.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/player_model.dart';
import 'package:lavagna_tattica/features/tactical_board/providers/board_provider.dart';

enum RecordingState { idle, recording, playing, paused }

final recordingStepCountProvider = StateProvider<int>((ref) => 0);

class RecordingNotifier extends StateNotifier<RecordingState> {
  RecordingNotifier(this.ref) : super(RecordingState.idle);

  final Ref ref;
  final List<MovementKeyframe> _keyframes = [];
  DateTime? _recordingStartTime;
  double _lastStepTime = 0.0;
  double _playbackTime = 0.0;
  Map<String, Offset> _initialPositions = {};
  Map<String, double> _initialRotations = {};

  RecordingState get recordingState => state;
  double get playbackTime => _playbackTime;
  double get duration => _keyframes.isEmpty 
      ? 0.0 
      : _keyframes.map((k) => k.timestamp).reduce((a, b) => a > b ? a : b);

  bool _hasStartedMoving = false;

  void startRecording() {
    _keyframes.clear();
    _recordingStartTime = DateTime.now();
    _lastStepTime = 0.0;
    _hasStartedMoving = false;
    state = RecordingState.recording;
    
    // Resetta conteggio step
    Future.microtask(() {
      ref.read(recordingStepCountProvider.notifier).state = 0;
    });

    // Salva posizioni iniziali
    final boardState = ref.read(boardProvider);
    _initialPositions = {
      for (var player in boardState.players)
        player.id: player.position,
    };
    _initialRotations = {
      for (var player in boardState.players)
        player.id: player.rotation,
    };

    // Registra frame iniziale
    for (var player in boardState.players) {
      _keyframes.add(MovementKeyframe(
        playerId: player.id,
        position: player.position,
        rotation: player.rotation,
        timestamp: 0.0,
      ));
    }
  }

  void addStep() {
    if (state != RecordingState.recording) return;

    _hasStartedMoving = true;
    // Rimuovi tutti i frame continui creati dopo l'ultimo step
    _keyframes.removeWhere((k) => k.timestamp > _lastStepTime);

    _lastStepTime += 1.0; // Transizione di 1 secondo
    ref.read(recordingStepCountProvider.notifier).state++;

    final boardState = ref.read(boardProvider);
    for (var player in boardState.players) {
      _keyframes.add(MovementKeyframe(
        playerId: player.id,
        position: player.position,
        rotation: player.rotation,
        timestamp: _lastStepTime,
      ));
    }

    // Risincronizza il tempo reale con la timeline virtuale per la rec. continua futura
    final offsetMs = (_lastStepTime * 1000).toInt();
    _recordingStartTime = DateTime.now().subtract(Duration(milliseconds: offsetMs));
  }

  void recordFrame({bool force = false}) {
    if (state != RecordingState.recording) return;

    if (!_hasStartedMoving) {
      _hasStartedMoving = true;
      // Taglia tutto il tempo morto (es. i primi 5 secondi se hai atteso).
      // Lascia solo un battito di 200 millisecondi di transizione iniziale.
      _recordingStartTime = DateTime.now().subtract(const Duration(milliseconds: 200));
    }

    final elapsed = DateTime.now().difference(_recordingStartTime!).inMilliseconds / 1000.0;
    final boardState = ref.read(boardProvider);

    for (var player in boardState.players) {
      // Registra solo se c'è stato un cambiamento significativo
      final lastKeyframe = _keyframes.lastWhere(
        (k) => k.playerId == player.id,
        orElse: () => MovementKeyframe(
          playerId: player.id,
          position: player.position,
          rotation: player.rotation,
          timestamp: 0.0,
        ),
      );

      final positionChanged = (player.position - lastKeyframe.position).distance > 0.01;
      final rotationChanged = (player.rotation - lastKeyframe.rotation).abs() > 1.0;

      if (force || positionChanged || rotationChanged) {
        _keyframes.add(MovementKeyframe(
          playerId: player.id,
          position: player.position,
          rotation: player.rotation,
          timestamp: elapsed,
        ));
      }
    }
  }

  MovementRecording stopRecording() {
    state = RecordingState.idle;
    final recording = MovementRecording(
      keyframes: List.from(_keyframes),
      duration: duration,
      createdAt: DateTime.now(),
    );
    
    // Salva la registrazione nello stato del board
    ref.read(boardProvider.notifier).state = ref.read(boardProvider).copyWith(
      recording: recording,
    );
    
    return recording;
  }

  void startPlayback() {
    if (_keyframes.isEmpty) return;
    
    // Se siamo alla fine o in idle, resetta tutto
    if (state == RecordingState.idle || _playbackTime >= duration) {
      _playbackTime = 0.0;
      _resetToInitialPositions();
    }
    
    state = RecordingState.playing;
  }

  void pausePlayback() {
    state = RecordingState.paused;
  }

  void resumePlayback() {
    state = RecordingState.playing;
  }

  void stopPlayback() {
    state = RecordingState.idle;
    _playbackTime = 0.0;
    _resetToInitialPositions();
  }

  void updatePlayback(double deltaTime) {
    if (state != RecordingState.playing) return;

    _playbackTime += deltaTime;

    if (_playbackTime >= duration) {
      _playbackTime = duration;
      state = RecordingState.idle;
    }

    _applyKeyframesAtTime(_playbackTime);
  }

  void seekPlayback(double targetTime) {
    _playbackTime = targetTime.clamp(0.0, duration);
    _applyKeyframesAtTime(_playbackTime);
    if (_playbackTime >= duration && state == RecordingState.playing) {
      state = RecordingState.idle;
    }
  }

  void skipToNextStep() {
    if (_keyframes.isEmpty) return;
    state = RecordingState.paused;
    final currentSecond = _playbackTime.floor();
    final nextTarget = (currentSecond + 1.0).clamp(0.0, duration);
    seekPlayback(nextTarget);
  }

  void skipToPreviousStep() {
    if (_keyframes.isEmpty) return;
    state = RecordingState.paused;
    final currentSecond = _playbackTime.ceil();
    // Se siamo già esatti al secondo, andiamo al precedente vero
    final prevTarget = (currentSecond - 1.0).clamp(0.0, duration);
    seekPlayback(prevTarget);
  }

  void _resetToInitialPositions() {
    final boardState = ref.read(boardProvider);
    final updatedPlayers = boardState.players.map((player) {
      return player.copyWith(
        position: _initialPositions[player.id] ?? player.position,
        rotation: _initialRotations[player.id] ?? player.rotation,
      );
    }).toList();

    ref.read(boardProvider.notifier).state = boardState.copyWith(
      players: updatedPlayers,
    );
  }

  void _applyKeyframesAtTime(double time) {
    final boardState = ref.read(boardProvider);
    final updatedPlayers = <PlayerModel>[];

    for (var player in boardState.players) {
      // Trova i keyframe prima e dopo il tempo corrente
      final playerKeyframes = _keyframes
          .where((k) => k.playerId == player.id)
          .toList()
        ..sort((a, b) => a.timestamp.compareTo(b.timestamp));

      if (playerKeyframes.isEmpty) {
        updatedPlayers.add(player);
        continue;
      }

      MovementKeyframe? before;
      MovementKeyframe? after;

      for (var kf in playerKeyframes) {
        if (kf.timestamp <= time) {
          before = kf;
        } else {
          after = kf;
          break;
        }
      }

      if (before == null) {
        // Se non c'è un keyframe prima del tempo corrente, usa il primo disponibile
        // per evitare che il giocatore rimanga fermo all'inizio
        if (playerKeyframes.isNotEmpty) {
          final firstKeyframe = playerKeyframes.first;
          updatedPlayers.add(player.copyWith(
            position: firstKeyframe.position,
            rotation: firstKeyframe.rotation,
          ));
        } else {
          updatedPlayers.add(player);
        }
        continue;
      }

      if (after == null) {
        // Usa l'ultimo keyframe
        updatedPlayers.add(player.copyWith(
          position: before.position,
          rotation: before.rotation,
        ));
        continue;
      }

      // Interpola tra before e after
      final t = (time - before.timestamp) / (after.timestamp - before.timestamp);
      final interpolatedPosition = Offset.lerp(before.position, after.position, t)!;
      final interpolatedRotation = before.rotation + (after.rotation - before.rotation) * t;

      updatedPlayers.add(player.copyWith(
        position: interpolatedPosition,
        rotation: interpolatedRotation,
      ));
    }

    ref.read(boardProvider.notifier).state = boardState.copyWith(
      players: updatedPlayers,
    );
  }

  void loadRecording(MovementRecording recording) {
    _keyframes.clear();
    _keyframes.addAll(recording.keyframes);
    
    // Estrai posizioni iniziali dalla registrazione
    _initialPositions.clear();
    _initialRotations.clear();
    
    for (var kf in recording.keyframes.where((k) => k.timestamp == 0.0)) {
      _initialPositions[kf.playerId] = kf.position;
      _initialRotations[kf.playerId] = kf.rotation;
    }
  }
}

final recordingProvider = StateNotifierProvider<RecordingNotifier, RecordingState>((ref) {
  return RecordingNotifier(ref);
});
