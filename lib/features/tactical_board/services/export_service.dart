import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ExportService {
  static Future<Uint8List?> exportAsImage(GlobalKey repaintBoundaryKey) async {
    try {
      final boundary = repaintBoundaryKey.currentContext?.findRenderObject()
          as RenderRepaintBoundary?;
      
      if (boundary == null) {
        debugPrint('ExportService: RenderRepaintBoundary not found');
        return null;
      }

      // Cattura l'immagine con alta risoluzione
      final ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      final ByteData? byteData = await image.toByteData(
        format: ui.ImageByteFormat.png,
      );

      if (byteData == null) {
        debugPrint('ExportService: Failed to convert image to bytes');
        return null;
      }

      return byteData.buffer.asUint8List();
    } catch (e) {
      debugPrint('ExportService: Error exporting image: $e');
      return null;
    }
  }

  static Future<void> shareImage(
    GlobalKey repaintBoundaryKey,
    BuildContext context, {
    String? fileName,
  }) async {
    final imageBytes = await exportAsImage(repaintBoundaryKey);
    
    if (imageBytes == null) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Errore durante l\'esportazione dell\'immagine'),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    // Per ora salviamo solo in memoria e mostriamo un messaggio
    // L'integrazione con share_plus richiede l'aggiunta del pacchetto
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Immagine esportata (${(imageBytes.length / 1024).toStringAsFixed(1)} KB)',
          ),
          backgroundColor: Colors.green,
          action: SnackBarAction(
            label: 'Condividi',
            textColor: Colors.white,
            onPressed: () async {
              await _shareImageBytes(imageBytes, context, fileName: fileName);
            },
          ),
        ),
      );
    }
  }

  static Future<void> _shareImageBytes(
    Uint8List imageBytes,
    BuildContext context, {
    String? fileName,
  }) async {
    try {
      // Importa share_plus dinamicamente se disponibile
      // Per ora mostriamo un dialog con le opzioni
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Esporta Schema'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'L\'immagine è stata generata con successo!',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Text(
                  'Dimensione: ${(imageBytes.length / 1024).toStringAsFixed(1)} KB',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                const SizedBox(height: 8),
                Text(
                  'Per condividere, aggiungi share_plus al progetto.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Chiudi'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      debugPrint('ExportService: Error sharing image: $e');
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Errore durante la condivisione: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
