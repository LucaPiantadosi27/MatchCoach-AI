import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/movement_keyframe.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/player_model.dart';
import 'package:lavagna_tattica/features/tactical_board/providers/board_provider.dart';

enum RecordingState { idle, recording, playing, paused }

class RecordingNotifier extends StateNotifier<RecordingState> {
  RecordingNotifier(this.ref) : super(RecordingState.idle);

  final Ref ref;
  final List<MovementKeyframe> _keyframes = [];
  DateTime? _recordingStartTime;
  double _playbackTime = 0.0;
  Map<String, Offset> _initialPositions = {};
  Map<String, double> _initialRotations = {};

  RecordingState get recordingState => state;
  double get playbackTime => _playbackTime;
  double get duration => _keyframes.isEmpty 
      ? 0.0 
      : _keyframes.map((k) => k.timestamp).reduce((a, b) => a > b ? a : b);

  void startRecording() {
    _keyframes.clear();
    _recordingStartTime = DateTime.now();
    state = RecordingState.recording;

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

  void recordFrame() {
    if (state != RecordingState.recording) return;

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

      if (positionChanged || rotationChanged) {
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
