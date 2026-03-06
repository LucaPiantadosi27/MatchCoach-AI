import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lavagna_tattica/features/tactical_board/providers/recording_provider.dart';
import 'dart:async';

class RecordingPlayer extends ConsumerStatefulWidget {
  const RecordingPlayer({super.key});

  @override
  ConsumerState<RecordingPlayer> createState() => _RecordingPlayerState();
}

class _RecordingPlayerState extends ConsumerState<RecordingPlayer> {
  Timer? _playbackTimer;

  @override
  void dispose() {
    _playbackTimer?.cancel();
    super.dispose();
  }

  void _startPlaybackTimer() {
    _playbackTimer?.cancel();
    _playbackTimer = Timer.periodic(const Duration(milliseconds: 16), (timer) {
      ref.read(recordingProvider.notifier).updatePlayback(0.016);
    });
  }

  void _stopPlaybackTimer() {
    _playbackTimer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final recordingState = ref.watch(recordingProvider);
    final recordingNotifier = ref.read(recordingProvider.notifier);
    final isPlaying = recordingState == RecordingState.playing;
    final isPaused = recordingState == RecordingState.paused;
    final playbackTime = recordingNotifier.playbackTime;
    final duration = recordingNotifier.duration;

    // Gestisci il timer in base allo stato
    if (isPlaying) {
      if (_playbackTimer == null || !_playbackTimer!.isActive) {
        _startPlaybackTimer();
      }
    } else {
      _stopPlaybackTimer();
    }

    if (duration == 0) {
      return const SizedBox.shrink();
    }

    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade50, Colors.purple.shade100],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Icon(Icons.play_circle, color: Colors.purple.shade700, size: 20),
                const SizedBox(width: 8),
                Text(
                  'Player Registrazione',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple.shade900,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Timeline Slider
            Column(
              children: [
                SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 4,
                    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
                    overlayShape: const RoundSliderOverlayShape(overlayRadius: 12),
                    activeTrackColor: Colors.purple.shade600,
                    inactiveTrackColor: Colors.purple.shade200,
                    thumbColor: Colors.purple.shade700,
                  ),
                  child: Slider(
                    value: playbackTime.clamp(0.0, duration),
                    min: 0,
                    max: duration,
                    onChanged: (value) {
                      recordingNotifier.updatePlayback(value - playbackTime);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _formatTime(playbackTime),
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.purple.shade700,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        _formatTime(duration),
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.purple.shade700,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Controls
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Skip backward
                _buildControlButton(
                  icon: Icons.replay_5,
                  onPressed: () {
                    recordingNotifier.updatePlayback(-5.0);
                  },
                  color: Colors.purple.shade600,
                  size: 32,
                  iconSize: 18,
                ),
                const SizedBox(width: 4),

                // Play/Pause
                _buildControlButton(
                  icon: isPlaying ? Icons.pause : Icons.play_arrow,
                  onPressed: () {
                    if (isPlaying) {
                      recordingNotifier.pausePlayback();
                    } else if (isPaused) {
                      recordingNotifier.resumePlayback();
                    } else {
                      // idle o finito - avvia/riavvia
                      recordingNotifier.startPlayback();
                    }
                  },
                  color: Colors.purple.shade700,
                  size: 40,
                  iconSize: 28,
                ),
                const SizedBox(width: 4),

                // Skip forward
                _buildControlButton(
                  icon: Icons.forward_5,
                  onPressed: () {
                    recordingNotifier.updatePlayback(5.0);
                  },
                  color: Colors.purple.shade600,
                  size: 32,
                  iconSize: 18,
                ),
                const SizedBox(width: 8),

                // Stop
                _buildControlButton(
                  icon: Icons.stop,
                  onPressed: () {
                    recordingNotifier.stopPlayback();
                  },
                  color: Colors.red.shade400,
                  size: 32,
                  iconSize: 18,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required VoidCallback onPressed,
    required Color color,
    double size = 40,
    double iconSize = 24,
  }) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(size / 2),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(size / 2),
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: iconSize,
          ),
        ),
      ),
    );
  }

  String _formatTime(double seconds) {
    final minutes = (seconds / 60).floor();
    final secs = (seconds % 60).floor();
    return '${minutes.toString().padLeft(1, '0')}:${secs.toString().padLeft(2, '0')}';
  }
}
