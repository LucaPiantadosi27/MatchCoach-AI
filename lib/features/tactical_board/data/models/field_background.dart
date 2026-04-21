import 'package:flutter/material.dart';

/// Tipi di background disponibili per il campo
enum FieldBackgroundType {
  green,
  blue,
  lightBlue,
  grey,
  parquetLight,
}

/// Configurazione background campo
class FieldBackground {
  final FieldBackgroundType type;
  final Color? solidColor;
  final String? imagePath;

  const FieldBackground({
    required this.type,
    this.solidColor,
    this.imagePath,
  });

  static FieldBackground get green => const FieldBackground(
        type: FieldBackgroundType.green,
        solidColor: Color(0xFF2E7D32),
      );

  static FieldBackground get blue => const FieldBackground(
        type: FieldBackgroundType.blue,
        solidColor: Color(0xFF1565C0),
      );

  static FieldBackground get lightBlue => const FieldBackground(
        type: FieldBackgroundType.lightBlue,
        solidColor: Color(0xFF03A9F4),
      );

  static FieldBackground get grey => const FieldBackground(
        type: FieldBackgroundType.grey,
        solidColor: Color(0xFF424242),
      );

  static FieldBackground get parquetLight => const FieldBackground(
        type: FieldBackgroundType.parquetLight,
        imagePath: 'assets/images/parquet-chiaro.jpg',
      );

  /// Lista di tutti i background disponibili
  static List<FieldBackground> get all => [
        green,
        blue,
        lightBlue,
        grey,
        parquetLight,
      ];

  String get displayName {
    switch (type) {
      case FieldBackgroundType.green:
        return 'Verde';
      case FieldBackgroundType.blue:
        return 'Blu';
      case FieldBackgroundType.lightBlue:
        return 'Azzurro';
      case FieldBackgroundType.grey:
        return 'Grigio';
      case FieldBackgroundType.parquetLight:
        return 'Parquet';
    }
  }

  IconData get icon {
    switch (type) {
      case FieldBackgroundType.green:
        return Icons.grass;
      case FieldBackgroundType.blue:
      case FieldBackgroundType.lightBlue:
        return Icons.water;
      case FieldBackgroundType.grey:
        return Icons.blur_on;
      case FieldBackgroundType.parquetLight:
        return Icons.grid_4x4;
    }
  }

  Color get previewColor {
    switch (type) {
      case FieldBackgroundType.green:
        return const Color(0xFF2E7D32);
      case FieldBackgroundType.blue:
        return const Color(0xFF1565C0);
      case FieldBackgroundType.lightBlue:
        return const Color(0xFF03A9F4);
      case FieldBackgroundType.grey:
        return const Color(0xFF424242);
      case FieldBackgroundType.parquetLight:
        return const Color(0xFFD4A574);
    }
  }
}
