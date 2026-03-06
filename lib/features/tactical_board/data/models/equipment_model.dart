import 'package:flutter/material.dart';

/// Tipi di attrezzature da allenamento
enum EquipmentType {
  cone,            // Cono
  obstacle,        // Ostacolo/barriera
  ladder,          // Scaletta coordinazione
  miniGoal,        // Porticina
  pole,            // Paletto
  yellowCard,      // Cartellino giallo
  redCard,         // Cartellino rosso
  topViewPlayer,   // Vista dall'alto giocatore
  mannequin,       // Manichino difensivo
}

extension EquipmentTypeExtension on EquipmentType {
  String get label {
    switch (this) {
      case EquipmentType.cone:
        return 'Cono';
      case EquipmentType.obstacle:
        return 'Ostacolo';
      case EquipmentType.ladder:
        return 'Scaletta';
      case EquipmentType.miniGoal:
        return 'Porticina';
      case EquipmentType.pole:
        return 'Paletto';
      case EquipmentType.yellowCard:
        return 'Giallo';
      case EquipmentType.redCard:
        return 'Rosso';
      case EquipmentType.topViewPlayer:
        return 'Vista alto';
      case EquipmentType.mannequin:
        return 'Manichino';
    }
  }

  IconData get icon {
    switch (this) {
      case EquipmentType.cone:
        return Icons.change_history;
      case EquipmentType.obstacle:
        return Icons.view_week;
      case EquipmentType.ladder:
        return Icons.stairs;
      case EquipmentType.miniGoal:
        return Icons.sports_soccer;
      case EquipmentType.pole:
        return Icons.vertical_align_top;
      case EquipmentType.yellowCard:
        return Icons.rectangle;
      case EquipmentType.redCard:
        return Icons.rectangle;
      case EquipmentType.topViewPlayer:
        return Icons.person_pin;
      case EquipmentType.mannequin:
        return Icons.accessibility_new;
    }
  }

  Color get color {
    switch (this) {
      case EquipmentType.cone:
        return Colors.orange;
      case EquipmentType.obstacle:
        return Colors.blue;
      case EquipmentType.ladder:
        return Colors.yellow.shade700;
      case EquipmentType.miniGoal:
        return Colors.white;
      case EquipmentType.pole:
        return Colors.red;
      case EquipmentType.yellowCard:
        return Colors.yellow;
      case EquipmentType.redCard:
        return Colors.red;
      case EquipmentType.topViewPlayer:
        return Colors.green;
      case EquipmentType.mannequin:
        return Colors.grey;
    }
  }
}

class EquipmentModel {
  final String id;
  final EquipmentType type;
  final Offset position; // 0.0 – 1.0 (normalized)
  final double rotation; // multipli di 45°

  const EquipmentModel({
    required this.id,
    required this.type,
    required this.position,
    this.rotation = 0.0,
  });

  EquipmentModel copyWith({
    String? id,
    EquipmentType? type,
    Offset? position,
    double? rotation,
  }) {
    return EquipmentModel(
      id: id ?? this.id,
      type: type ?? this.type,
      position: position ?? this.position,
      rotation: rotation ?? this.rotation,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type.name,
      'position': {'x': position.dx, 'y': position.dy},
      'rotation': rotation,
    };
  }

  factory EquipmentModel.fromJson(Map<String, dynamic> json) {
    return EquipmentModel(
      id: json['id'] as String,
      type: EquipmentType.values.byName(json['type'] as String),
      position: Offset(
        (json['position']['x'] as num).toDouble(),
        (json['position']['y'] as num).toDouble(),
      ),
      rotation: (json['rotation'] as num?)?.toDouble() ?? 0.0,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EquipmentModel &&
        other.id == id &&
        other.type == type &&
        other.position == position &&
        other.rotation == rotation;
  }

  @override
  int get hashCode => Object.hash(id, type, position, rotation);
}
