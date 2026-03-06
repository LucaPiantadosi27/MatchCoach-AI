import 'package:lavagna_tattica/features/tactical_board/data/models/movement_keyframe.dart';

class SavedRecording {
  final String id;
  final String userId;
  final String name;
  final MovementRecording recording;
  final String? thumbnailUrl;
  final DateTime createdAt;
  final DateTime? modifiedAt;

  const SavedRecording({
    required this.id,
    required this.userId,
    required this.name,
    required this.recording,
    this.thumbnailUrl,
    required this.createdAt,
    this.modifiedAt,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'name': name,
      'recording': recording.toJson(),
      'thumbnail_url': thumbnailUrl,
      'created_at': createdAt.toIso8601String(),
      'modified_at': modifiedAt?.toIso8601String(),
    };
  }

  factory SavedRecording.fromJson(Map<String, dynamic> json) {
    return SavedRecording(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      name: json['name'] as String,
      recording: MovementRecording.fromJson(json['recording'] as Map<String, dynamic>),
      thumbnailUrl: json['thumbnail_url'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: json['modified_at'] != null 
          ? DateTime.parse(json['modified_at'] as String)
          : null,
    );
  }

  SavedRecording copyWith({
    String? id,
    String? userId,
    String? name,
    MovementRecording? recording,
    String? thumbnailUrl,
    DateTime? createdAt,
    DateTime? modifiedAt,
  }) {
    return SavedRecording(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      recording: recording ?? this.recording,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      createdAt: createdAt ?? this.createdAt,
      modifiedAt: modifiedAt ?? this.modifiedAt,
    );
  }
}
