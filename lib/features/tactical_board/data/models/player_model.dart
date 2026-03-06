import 'package:flutter/material.dart';

enum TeamType { A, B, Ball }

class PlayerModel {
  final String id;
  final Offset position; // Relative position 0.0 to 1.0
  final TeamType team;
  final String label;
  final double rotation; // Rotation in degrees (0-360)
  final int? number; // Player number (optional)
  final bool isSelected; // Selection state for visual feedback

  const PlayerModel({
    required this.id,
    required this.position,
    required this.team,
    required this.label,
    this.rotation = 0.0,
    this.number,
    this.isSelected = false,
  });

  PlayerModel copyWith({
    String? id,
    Offset? position,
    TeamType? team,
    String? label,
    double? rotation,
    int? number,
    bool? isSelected,
  }) {
    return PlayerModel(
      id: id ?? this.id,
      position: position ?? this.position,
      team: team ?? this.team,
      label: label ?? this.label,
      rotation: rotation ?? this.rotation,
      number: number ?? this.number,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'x': position.dx,
      'y': position.dy,
      'team': team.name,
      'label': label,
      'rotation': rotation,
      'number': number,
    };
  }

  factory PlayerModel.fromJson(Map<String, dynamic> json) {
    return PlayerModel(
      id: json['id'] as String,
      position: Offset(json['x'] as double, json['y'] as double),
      team: TeamType.values.byName(json['team'] as String),
      label: json['label'] as String,
      rotation: (json['rotation'] as num?)?.toDouble() ?? 0.0,
      number: json['number'] as int?,
      isSelected: false,
    );
  }
}
