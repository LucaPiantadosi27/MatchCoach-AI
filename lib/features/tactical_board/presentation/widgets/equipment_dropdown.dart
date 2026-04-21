import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lavagna_tattica/core/theme.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/equipment_model.dart';
import 'package:lavagna_tattica/features/tactical_board/providers/board_provider.dart';

class EquipmentDropdown extends ConsumerWidget {
  const EquipmentDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppTheme.cardColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppTheme.sidebarBorderColor),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.sports_rounded,
            size: 20,
            color: AppTheme.textSecondary,
          ),
          SizedBox(width: 12),
          Text(
            'Aggiungi attrezzatura',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
          ),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_down,
            size: 20,
            color: AppTheme.textSecondary,
          ),
        ],
      ),
    );
  }
}

class EquipmentPickerDialog extends ConsumerWidget {
  const EquipmentPickerDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      backgroundColor: AppTheme.surfaceColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        width: 450,
        constraints: const BoxConstraints(maxHeight: 500),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                const Icon(
                  Icons.sports_rounded,
                  size: 24,
                  color: AppTheme.accentGreen,
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: Text(
                    'Seleziona attrezzatura',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Equipment grid
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1,
                ),
                itemCount: EquipmentType.values.length,
                itemBuilder: (context, index) {
                  final type = EquipmentType.values[index];
                  
                  return InkWell(
                    onTap: () {
                      ref.read(boardProvider.notifier).addEquipment(type);
                      Navigator.of(context).pop();
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppTheme.cardColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppTheme.sidebarBorderColor),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildEquipmentIcon(type),
                          const SizedBox(height: 8),
                          Text(
                            type.label,
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textPrimary,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            
            const SizedBox(height: 20),
            // Close button
            SizedBox(
              width: double.infinity,
              height: 48,
              child: OutlinedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppTheme.textSecondary,
                  side: const BorderSide(color: AppTheme.sidebarBorderColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Annulla',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEquipmentIcon(EquipmentType type) {
    switch (type) {
      case EquipmentType.cone:
        return CustomPaint(size: const Size(32, 32), painter: _ConeIconPainter());
      case EquipmentType.obstacle:
        return Container(
          width: 28, 
          height: 10,
          decoration: BoxDecoration(
            color: const Color(0xFF1565C0), 
            borderRadius: BorderRadius.circular(3),
          ),
        );
      case EquipmentType.ladder:
        return const Icon(Icons.stairs, size: 28, color: Color(0xFFFDD835));
      case EquipmentType.miniGoal:
        return Container(
          width: 32, 
          height: 20,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2),
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: const Center(
            child: Text(
              'G',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        );
      case EquipmentType.pole:
        return Container(
          width: 4, 
          height: 32,
          decoration: BoxDecoration(
            color: Colors.grey.shade600,
            borderRadius: BorderRadius.circular(2),
          ),
        );
      case EquipmentType.yellowCard:
        return Container(
          width: 28, 
          height: 20,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(2),
            border: Border.all(color: Colors.black, width: 1),
          ),
        );
      case EquipmentType.redCard:
        return Container(
          width: 28, 
          height: 20,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(2),
            border: Border.all(color: Colors.black, width: 1),
          ),
        );
      case EquipmentType.topViewPlayer:
        return Container(
          width: 28, 
          height: 28,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFF2E7D32),
            border: Border.all(color: Colors.white, width: 2),
          ),
        );
      case EquipmentType.mannequin:
        return const Icon(Icons.accessibility_new, size: 28, color: Colors.grey);
    }
  }
}

// Copied from sidebar_panel.dart to avoid circular imports
class _ConeIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFFF6F00)
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width * 0.5, size.height * 0.1)
      ..lineTo(size.width * 0.9, size.height * 0.9)
      ..lineTo(size.width * 0.5, size.height * 0.8)
      ..lineTo(size.width * 0.1, size.height * 0.9)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_ConeIconPainter oldDelegate) => false;
}
