import 'dart:io';
import 'package:flutter/foundation.dart';
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

class _TipBullet extends StatelessWidget {
  final String text;

  const _TipBullet({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, size: 16, color: Colors.greenAccent),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class _VideoAnalysisPageState extends ConsumerState<VideoAnalysisPage> {
  XFile? _selectedVideo;
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
        _selectedVideo = video;
        _uploadUrl = null;
      });
      _initializePreview();
    }
  }

  Future<void> _initializePreview() async {
    if (_selectedVideo == null) return;

    await _videoController?.dispose();
    
    // Use network() for web, file() for mobile/desktop
    if (kIsWeb) {
      _videoController = VideoPlayerController.network(_selectedVideo!.path)
        ..initialize().then((_) {
          setState(() {});
        });
    } else {
      _videoController = VideoPlayerController.file(File(_selectedVideo!.path))
        ..initialize().then((_) {
          setState(() {});
        });
    }
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
            Container(
              height: _selectedVideo == null ? 280 : 360,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey[800]!),
              ),
              child: _selectedVideo == null
                  ? InkWell(
                      onTap: _pickVideo,
                      borderRadius: BorderRadius.circular(16),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.cloud_upload_rounded,
                                size: 56, color: Colors.white70),
                            const SizedBox(height: 16),
                            const Text(
                              'Carica il video della partita',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Supportati MP4 e MOV • max 30s per upload rapido',
                              style: TextStyle(color: Colors.grey[400]),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 18),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(999),
                                color: Colors.white.withValues(alpha: 0.1),
                              ),
                              child: const Text(
                                'Tocca per selezionare un file',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
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
                              color: Colors.white.withValues(alpha: 0.9),
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
            const SizedBox(height: 24),

            // Tips List
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.grey.shade800),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Cosa puoi fare qui',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 12),
                  _TipBullet(text: 'Carica una singola partita inquadrata dall’alto o laterale'),
                  _TipBullet(text: 'L’AI traccia i movimenti e genera statistiche automaticamente'),
                  _TipBullet(text: 'Ricevi uno scout completo e chatta col modello per domande mirate'),
                  _TipBullet(text: 'Puoi ricaricare un nuovo video in qualsiasi momento'),
                ],
              ),
            ),
            const SizedBox(height: 24),

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
