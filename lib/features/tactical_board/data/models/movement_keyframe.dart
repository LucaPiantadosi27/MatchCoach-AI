import 'package:flutter/material.dart';

/// Rappresenta un keyframe nella timeline di registrazione
class MovementKeyframe {
  final String playerId;
  final Offset position;
  final double rotation;
  final double timestamp; // in secondi

  const MovementKeyframe({
    required this.playerId,
    required this.position,
    required this.rotation,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() {
    return {
      'playerId': playerId,
      'x': position.dx,
      'y': position.dy,
      'rotation': rotation,
      'timestamp': timestamp,
    };
  }

  factory MovementKeyframe.fromJson(Map<String, dynamic> json) {
    return MovementKeyframe(
      playerId: json['playerId'] as String,
      position: Offset(
        (json['x'] as num).toDouble(),
        (json['y'] as num).toDouble(),
      ),
      rotation: (json['rotation'] as num).toDouble(),
      timestamp: (json['timestamp'] as num).toDouble(),
    );
  }

  MovementKeyframe copyWith({
    String? playerId,
    Offset? position,
    double? rotation,
    double? timestamp,
  }) {
    return MovementKeyframe(
      playerId: playerId ?? this.playerId,
      position: position ?? this.position,
      rotation: rotation ?? this.rotation,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}

/// Rappresenta una registrazione completa di movimenti
class MovementRecording {
  final List<MovementKeyframe> keyframes;
  final double duration; // durata totale in secondi
  final DateTime createdAt;

  const MovementRecording({
    required this.keyframes,
    required this.duration,
    required this.createdAt,
  });

  Map<String, dynamic> toJson() {
    return {
      'keyframes': keyframes.map((k) => k.toJson()).toList(),
      'duration': duration,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory MovementRecording.fromJson(Map<String, dynamic> json) {
    return MovementRecording(
      keyframes: (json['keyframes'] as List)
          .map((k) => MovementKeyframe.fromJson(k as Map<String, dynamic>))
          .toList(),
      duration: (json['duration'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }
}
