class SeasonModel {
  final String id;
  final String userId;
  final String name;
  final DateTime createdAt;

  const SeasonModel({
    required this.id,
    required this.userId,
    required this.name,
    required this.createdAt,
  });

  factory SeasonModel.fromJson(Map<String, dynamic> json) => SeasonModel(
        id: json['id'] as String,
        userId: json['user_id'] as String,
        name: json['name'] as String,
        createdAt: DateTime.parse(json['created_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'name': name,
      };
}
