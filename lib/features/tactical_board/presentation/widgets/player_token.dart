import 'package:flutter/material.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/player_model.dart';
import 'dart:math' as math;

class PlayerToken extends StatelessWidget {
  final PlayerModel player;

  const PlayerToken({
    super.key,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {
    // Ball has different rendering
    if (player.team == TeamType.Ball) {
      return _buildBall();
    }

    // Player with rotation and posture
    return Transform.rotate(
      angle: player.rotation * math.pi / 180,
      child: CustomPaint(
        size: const Size(40, 40),
        painter: _PlayerPainter(
          player: player,
        ),
      ),
    );
  }

  Widget _buildBall() {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: player.isSelected ? Colors.yellow : Colors.black,
          width: player.isSelected ? 3 : 2,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: const Center(
        child: Text(
          '⚽',
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}

class _PlayerPainter extends CustomPainter {
  final PlayerModel player;

  _PlayerPainter({required this.player});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final bodyRadius = 14.0;
    final armLength = 10.0;
    final armWidth = 3.0;

    // Team color
    final teamColor = player.team == TeamType.A ? Colors.red : Colors.blue;

    // Selection glow
    if (player.isSelected) {
      final glowPaint = Paint()
        ..color = Colors.yellow.withOpacity(0.5)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
      canvas.drawCircle(center, bodyRadius + 4, glowPaint);
    }

    // Draw arms border
    final armBorderWidth = player.isSelected ? 3.0 : 2.0;
    final armBorderColor = player.isSelected ? Colors.yellow : Colors.white;

    final armBorderPaint = Paint()
      ..color = armBorderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = armWidth + armBorderWidth * 2
      ..strokeCap = StrokeCap.round;

    // Left arm border
    canvas.drawLine(
      Offset(center.dx - bodyRadius * 0.7, center.dy),
      Offset(center.dx - bodyRadius * 0.7 - armLength, center.dy - armLength * 0.5),
      armBorderPaint,
    );

    // Right arm border
    canvas.drawLine(
      Offset(center.dx + bodyRadius * 0.7, center.dy),
      Offset(center.dx + bodyRadius * 0.7 + armLength, center.dy - armLength * 0.5),
      armBorderPaint,
    );

    // Draw arms (lateral extensions)
    final armPaint = Paint()
      ..color = teamColor.withOpacity(0.8)
      ..style = PaintingStyle.stroke
      ..strokeWidth = armWidth
      ..strokeCap = StrokeCap.round;

    // Left arm
    canvas.drawLine(
      Offset(center.dx - bodyRadius * 0.7, center.dy),
      Offset(center.dx - bodyRadius * 0.7 - armLength, center.dy - armLength * 0.5),
      armPaint,
    );

    // Right arm
    canvas.drawLine(
      Offset(center.dx + bodyRadius * 0.7, center.dy),
      Offset(center.dx + bodyRadius * 0.7 + armLength, center.dy - armLength * 0.5),
      armPaint,
    );

    // Draw body (main circle)
    final bodyPaint = Paint()
      ..color = teamColor
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, bodyRadius, bodyPaint);

    // Border
    final borderPaint = Paint()
      ..color = player.isSelected ? Colors.yellow : Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = player.isSelected ? 3 : 2;

    canvas.drawCircle(center, bodyRadius, borderPaint);

    // Direction indicator (triangle at top)
    final directionPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final directionPath = Path()
      ..moveTo(center.dx, center.dy - bodyRadius - 6)
      ..lineTo(center.dx - 4, center.dy - bodyRadius)
      ..lineTo(center.dx + 4, center.dy - bodyRadius)
      ..close();

    canvas.drawPath(directionPath, directionPaint);

    // Player number/label
    if (player.number != null) {
      final textPainter = TextPainter(
        text: TextSpan(
          text: player.number.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();

      // Mantieni il numero sempre frontale (non ruota con la pedina)
      canvas.save();
      canvas.translate(center.dx, center.dy);
      canvas.rotate(-player.rotation * math.pi / 180);
      canvas.translate(-center.dx, -center.dy);

      textPainter.paint(
        canvas,
        Offset(
          center.dx - textPainter.width / 2,
          center.dy - textPainter.height / 2,
        ),
      );

      canvas.restore();
    }

    // Shadow
    final shadowPaint = Paint()
      ..color = Colors.black26
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
    canvas.drawCircle(center + const Offset(0, 2), bodyRadius, shadowPaint);
  }

  @override
  bool shouldRepaint(_PlayerPainter oldDelegate) {
    return oldDelegate.player != player;
  }
}
