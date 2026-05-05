class SavedSnapshot {
  final String id;
  final String userId;
  final String name;
  final String imageBase64;
  final DateTime createdAt;

  const SavedSnapshot({
    required this.id,
    required this.userId,
    required this.name,
    required this.imageBase64,
    required this.createdAt,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'name': name,
        'image_base64': imageBase64,
        'created_at': createdAt.toIso8601String(),
      };

  factory SavedSnapshot.fromJson(Map<String, dynamic> json) => SavedSnapshot(
        id: json['id'] as String,
        userId: json['user_id'] as String,
        name: json['name'] as String,
        imageBase64: json['image_base64'] as String,
        createdAt: DateTime.parse(json['created_at'] as String),
      );
}
