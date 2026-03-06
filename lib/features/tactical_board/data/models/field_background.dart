import 'package:flutter/material.dart';

/// Tipi di background disponibili per il campo
enum FieldBackgroundType {
  green,
  darkGreen,
  blue,
  lightBlue,
  red,
  orange,
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

  static FieldBackground get darkGreen => const FieldBackground(
        type: FieldBackgroundType.darkGreen,
        solidColor: Color(0xFF1B5E20),
      );

  static FieldBackground get blue => const FieldBackground(
        type: FieldBackgroundType.blue,
        solidColor: Color(0xFF1565C0),
      );

  static FieldBackground get lightBlue => const FieldBackground(
        type: FieldBackgroundType.lightBlue,
        solidColor: Color(0xFF03A9F4),
      );

  static FieldBackground get red => const FieldBackground(
        type: FieldBackgroundType.red,
        solidColor: Color(0xFFC62828),
      );

  static FieldBackground get orange => const FieldBackground(
        type: FieldBackgroundType.orange,
        solidColor: Color(0xFFEF6C00),
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
        darkGreen,
        blue,
        lightBlue,
        red,
        orange,
        grey,
        parquetLight,
      ];

  String get displayName {
    switch (type) {
      case FieldBackgroundType.green:
        return 'Verde';
      case FieldBackgroundType.darkGreen:
        return 'Verde Scuro';
      case FieldBackgroundType.blue:
        return 'Blu';
      case FieldBackgroundType.lightBlue:
        return 'Azzurro';
      case FieldBackgroundType.red:
        return 'Rosso';
      case FieldBackgroundType.orange:
        return 'Arancione';
      case FieldBackgroundType.grey:
        return 'Grigio';
      case FieldBackgroundType.parquetLight:
        return 'Parquet';
    }
  }

  IconData get icon {
    switch (type) {
      case FieldBackgroundType.green:
      case FieldBackgroundType.darkGreen:
        return Icons.grass;
      case FieldBackgroundType.blue:
      case FieldBackgroundType.lightBlue:
        return Icons.water;
      case FieldBackgroundType.red:
        return Icons.local_fire_department;
      case FieldBackgroundType.orange:
        return Icons.wb_sunny;
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
      case FieldBackgroundType.darkGreen:
        return const Color(0xFF1B5E20);
      case FieldBackgroundType.blue:
        return const Color(0xFF1565C0);
      case FieldBackgroundType.lightBlue:
        return const Color(0xFF03A9F4);
      case FieldBackgroundType.red:
        return const Color(0xFFC62828);
      case FieldBackgroundType.orange:
        return const Color(0xFFEF6C00);
      case FieldBackgroundType.grey:
        return const Color(0xFF424242);
      case FieldBackgroundType.parquetLight:
        return const Color(0xFFD4A574);
    }
  }
}
