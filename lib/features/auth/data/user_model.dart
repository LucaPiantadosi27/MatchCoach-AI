class UserModel {
  final String id;
  final String email;
  final String role;
  final int schemesCount;

  const UserModel({
    required this.id,
    required this.email,
    this.role = 'free',
    this.schemesCount = 0,
  });

  bool get isAdmin => role == 'admin';
  bool get isPremium => role == 'premium' || role == 'admin';
  bool get canSaveScheme => isPremium || schemesCount < 10;
  int get remainingSchemes => isPremium ? -1 : (10 - schemesCount).clamp(0, 10);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String,
      email: json['email'] as String,
      role: json['role'] as String? ?? 'free',
      schemesCount: json['schemes_count'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'role': role,
      'schemes_count': schemesCount,
    };
  }

  UserModel copyWith({
    String? id,
    String? email,
    String? role,
    int? schemesCount,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      role: role ?? this.role,
      schemesCount: schemesCount ?? this.schemesCount,
    );
  }
}
