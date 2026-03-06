import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:lavagna_tattica/features/auth/providers/auth_providers.dart';
import 'package:lavagna_tattica/features/video_analysis/data/video_service.dart';

final videoServiceProvider = Provider((ref) => VideoService());

class VideoAnalysisPage extends ConsumerStatefulWidget {
  const VideoAnalysisPage({super.key});

  @override
  ConsumerState<VideoAnalysisPage> createState() => _VideoAnalysisPageState();
}

class _VideoAnalysisPageState extends ConsumerState<VideoAnalysisPage> {
  File? _selectedVideo;
  VideoPlayerController? _videoController;
  bool _isProcessing = false;
  String? _uploadUrl;

  final ImagePicker _picker = ImagePicker();

  @override
  void dispose() {
    _videoController?.dispose();
    super.dispose();
  }

  Future<void> _pickVideo() async {
    final XFile? video = await _picker.pickVideo(source: ImageSource.gallery);
    if (video != null) {
      setState(() {
        _selectedVideo = File(video.path);
        _uploadUrl = null;
      });
      _initializePreview();
    }
  }

  Future<void> _initializePreview() async {
    if (_selectedVideo == null) return;

    await _videoController?.dispose();
    _videoController = VideoPlayerController.file(_selectedVideo!)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  Future<void> _processAndUpload() async {
    final user = ref.read(userProvider).valueOrNull;
    if (user == null || _selectedVideo == null) return;

    setState(() => _isProcessing = true);

    try {
      final service = ref.read(videoServiceProvider);
      
      // Step 1: Compress
      final processedFile = await service.processVideo(_selectedVideo!);
      if (processedFile == null) throw Exception('Errore nella compressione video');

      // Step 2: Upload
      final url = await service.uploadVideo(processedFile, user.id);
      if (url == null) throw Exception('Errore nell\'upload del video');

      setState(() {
        _uploadUrl = url;
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Video caricato con successo! L\'AI inizierà l\'analisi a breve.')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Errore: ${e.toString()}')),
        );
      }
    } finally {
      if (mounted) setState(() => _isProcessing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Analisi Video AI')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Info Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const Icon(Icons.info_outline, color: Colors.amber),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Carica un video della partita. L\'AI riconoscerà automaticamente giocatori e schemi.',
                        style: TextStyle(color: Colors.grey[300]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),

            // Video Preview Area
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey[800]!),
                ),
                child: _selectedVideo == null
                    ? InkWell(
                        onTap: _pickVideo,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.add_a_photo, size: 48, color: Colors.grey),
                            const SizedBox(height: 12),
                            Text('Seleziona Video dalla Galleria',
                                style: TextStyle(color: Colors.grey[400])),
                          ],
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            if (_videoController != null &&
                                _videoController!.value.isInitialized)
                              VideoPlayer(_videoController!)
                            else
                              const CircularProgressIndicator(),
                            
                            IconButton(
                              icon: Icon(
                                _videoController?.value.isPlaying ?? false
                                    ? Icons.pause_circle_filled
                                    : Icons.play_circle_filled,
                                size: 64,
                                color: Colors.white.withValues(alpha: 0.8),
                              ),
                              onPressed: () {
                                setState(() {
                                  _videoController!.value.isPlaying
                                      ? _videoController!.pause()
                                      : _videoController!.play();
                                });
                              },
                            ),
                          ],
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 32),

            if (_selectedVideo != null) ...[
              ElevatedButton.icon(
                onPressed: _isProcessing ? null : _processAndUpload,
                icon: _isProcessing
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                      )
                    : const Icon(Icons.cloud_upload),
                label: Text(_isProcessing ? 'Elaborazione in corso...' : 'Analizza Video'),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: _isProcessing ? null : _pickVideo,
                child: const Text('Cambia Video'),
              ),
            ],

            if (_uploadUrl != null) ...[
              const Divider(height: 48),
              const Text(
                'Stato Analisi',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: const CircularProgressIndicator(strokeWidth: 2),
                title: const Text('In attesa del server AI'),
                subtitle: const Text('Il riconoscimento potrebbe richiedere alcuni minuti.'),
                tileColor: Theme.of(context).cardColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
