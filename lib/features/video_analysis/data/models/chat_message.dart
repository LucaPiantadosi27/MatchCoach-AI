enum ChatRole { user, model }

class ChatMessage {
  final ChatRole role;
  final String text;
  final DateTime timestamp;

  ChatMessage({
    required this.role,
    required this.text,
    DateTime? timestamp,
  }) : timestamp = timestamp ?? DateTime.now();

  Map<String, dynamic> toJson() => {
    'role': role.name,
    'text': text,
    'timestamp': timestamp.toIso8601String(),
  };
}
