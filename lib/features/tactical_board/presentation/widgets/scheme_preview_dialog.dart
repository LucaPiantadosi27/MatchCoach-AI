import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/board_state.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/field_background.dart';
import 'package:lavagna_tattica/features/tactical_board/presentation/widgets/field_painter.dart';
import 'package:lavagna_tattica/features/tactical_board/presentation/widgets/drawing_painter.dart';
import 'package:lavagna_tattica/features/tactical_board/presentation/widgets/player_token.dart';
import 'package:lavagna_tattica/features/tactical_board/providers/recording_provider.dart';

class SchemePreviewDialog extends ConsumerStatefulWidget {
  final BoardState boardState;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const SchemePreviewDialog({
    super.key,
    required this.boardState,
    required this.onSave,
    required this.onCancel,
  });

  @override
  ConsumerState<SchemePreviewDialog> createState() => _SchemePreviewDialogState();
}

class _SchemePreviewDialogState extends ConsumerState<SchemePreviewDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: (widget.boardState.recording?.duration ?? 1.0) * 1000 ~/ 1,
      ),
    );

    _animationController.addListener(() {
      if (_isPlaying) {
        ref.read(recordingProvider.notifier).updatePlayback(
          _animationController.lastElapsedDuration?.inMilliseconds.toDouble() ?? 0.0 / 1000.0,
        );
      }
    });

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _isPlaying = false;
        });
        _animationController.reset();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _togglePlayback() {
    setState(() {
      _isPlaying = !_isPlaying;
    });

    if (_isPlaying) {
      if (widget.boardState.recording != null) {
        ref.read(recordingProvider.notifier).loadRecording(widget.boardState.recording!);
        ref.read(recordingProvider.notifier).startPlayback();
      }
      _animationController.forward();
    } else {
      _animationController.stop();
      ref.read(recordingProvider.notifier).pausePlayback();
    }
  }

  @override
  Widget build(BuildContext context) {
    final hasRecording = widget.boardState.recording != null;

    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.8,
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Anteprima Schema',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: widget.onCancel,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              widget.boardState.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),

            // Preview Field
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Stack(
                        children: [
                          // Field (usa parquet light come default per preview)
                          CustomPaint(
                            size: Size.infinite,
                            painter: FieldPainter(
                              background: FieldBackground.parquetLight,
                            ),
                          ),
                          // Drawings
                          CustomPaint(
                            size: Size.infinite,
                            painter: DrawingPainter(
                              paths: widget.boardState.paths,
                              currentPath: null,
                            ),
                          ),
                          // Players
                          ...widget.boardState.players.map((player) {
                            return Positioned(
                              left: player.position.dx * constraints.maxWidth - 20,
                              top: player.position.dy * constraints.maxHeight - 20,
                              child: PlayerToken(player: player),
                            );
                          }),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Recording Controls
            if (hasRecording)
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
                          onPressed: _togglePlayback,
                          iconSize: 32,
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Registrazione: ${widget.boardState.recording!.duration.toStringAsFixed(1)}s',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              LinearProgressIndicator(
                                value: _animationController.value,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            if (!hasRecording)
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.orange.shade200),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.info_outline, color: Colors.orange),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Questo schema non contiene una registrazione di movimenti',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ),

            const SizedBox(height: 16),

            // Info
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Giocatori: ${widget.boardState.players.length}',
                        style: const TextStyle(fontSize: 12),
                      ),
                      Text(
                        'Tracciati: ${widget.boardState.paths.length}',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Actions
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: widget.onCancel,
                  child: const Text('Annulla'),
                ),
                const SizedBox(width: 8),
                ElevatedButton.icon(
                  onPressed: widget.onSave,
                  icon: const Icon(Icons.save),
                  label: const Text('Salva Schema'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
