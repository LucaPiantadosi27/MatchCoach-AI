import 'package:lavagna_tattica/features/tactical_board/data/models/player_model.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/drawing_path.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/movement_keyframe.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/equipment_model.dart';

class BoardState {
  final String name;
  final List<PlayerModel> players;
  final List<DrawingPath> paths;
  final List<EquipmentModel> equipment;
  final DateTime? createdAt;
  final DateTime? modifiedAt;
  final String version;
  final MovementRecording? recording;

  const BoardState({
    this.name = 'Nuovo Schema',
    required this.players,
    this.paths = const [],
    this.equipment = const [],
    this.createdAt,
    this.modifiedAt,
    this.version = '2.0',
    this.recording,
  });

  BoardState copyWith({
    String? name,
    List<PlayerModel>? players,
    List<DrawingPath>? paths,
    List<EquipmentModel>? equipment,
    DateTime? createdAt,
    DateTime? modifiedAt,
    String? version,
    MovementRecording? recording,
  }) {
    return BoardState(
      name: name ?? this.name,
      players: players ?? this.players,
      paths: paths ?? this.paths,
      equipment: equipment ?? this.equipment,
      createdAt: createdAt ?? this.createdAt,
      modifiedAt: modifiedAt ?? DateTime.now(),
      version: version ?? this.version,
      recording: recording ?? this.recording,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'players': players.map((p) => p.toJson()).toList(),
      'paths': paths.map((p) => p.toJson()).toList(),
      'equipment': equipment.map((e) => e.toJson()).toList(),
      'recording': recording?.toJson(),
      'meta': {
        'createdAt': createdAt?.toIso8601String(),
        'modifiedAt': modifiedAt?.toIso8601String(),
        'version': version,
      },
    };
  }

  factory BoardState.fromJson(Map<String, dynamic> json) {
    final meta = json['meta'] as Map<String, dynamic>?;
    return BoardState(
      name: json['name'] as String? ?? 'Nuovo Schema',
      players: (json['players'] as List)
          .map((p) => PlayerModel.fromJson(p as Map<String, dynamic>))
          .toList(),
      paths: (json['paths'] as List? ?? [])
          .map((p) => DrawingPath.fromJson(p as Map<String, dynamic>))
          .toList(),
      equipment: (json['equipment'] as List? ?? [])
          .map((e) => EquipmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recording: json['recording'] != null
          ? MovementRecording.fromJson(json['recording'] as Map<String, dynamic>)
          : null,
      createdAt: meta?['createdAt'] != null
          ? DateTime.parse(meta!['createdAt'] as String)
          : null,
      modifiedAt: meta?['modifiedAt'] != null
          ? DateTime.parse(meta!['modifiedAt'] as String)
          : null,
      version: meta?['version'] as String? ?? '1.0',
    );
  }
}
