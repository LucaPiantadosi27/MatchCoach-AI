import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:lavagna_tattica/features/auth/providers/auth_providers.dart';
import 'package:lavagna_tattica/features/video_analysis/data/repositories/ai_analysis_repository.dart';
import 'package:lavagna_tattica/features/video_analysis/data/repositories/video_analysis_repository.dart';
import 'package:lavagna_tattica/features/video_analysis/data/models/scout_statistics.dart';

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
  ScoutStatistics? _analysisResults;
  String? _savedAnalysisId;

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
        _analysisResults = null;
        _savedAnalysisId = null;
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

  Future<void> _analyzeAndSave() async {
    final user = ref.read(userProvider).valueOrNull;
    if (user == null || _selectedVideo == null) return;

    setState(() => _isProcessing = true);

    try {
      // Step 1: Analizza il video localmente (senza upload)
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Analisi in corso... Questo potrebbe richiedere alcuni minuti.'),
            duration: Duration(seconds: 3),
          ),
        );
      }

      final aiRepo = ref.read(aiAnalysisRepositoryProvider);
      final results = await aiRepo.analyzeMatchVideo(_selectedVideo!);
      
      setState(() {
        _analysisResults = results;
      });

      // Step 2: Salva solo il JSON su Supabase (non il video)
      final analysisRepo = ref.read(videoAnalysisRepositoryProvider);
      final videoName = _selectedVideo!.name;
      final analysisId = await analysisRepo.saveAnalysis(
        userId: user.id,
        videoName: videoName,
        analysis: results,
      );

      setState(() {
        _savedAnalysisId = analysisId;
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('✅ Analisi completata e salvata con successo!'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 3),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        String errorMessage = 'Errore durante l\'analisi';
        
        if (e.toString().contains('GEMINI_API_KEY')) {
          errorMessage = 'Chiave API non configurata. Contatta l\'amministratore.';
        } else if (e.toString().contains('salvataggio')) {
          errorMessage = 'Analisi completata ma errore nel salvataggio. Riprova.';
        } else {
          errorMessage = 'Errore: ${e.toString()}';
        }
        
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMessage),
            duration: const Duration(seconds: 5),
            backgroundColor: Colors.red,
          ),
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
                        'Carica un video della partita. L\'AI lo analizzerà localmente senza caricarlo online.',
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
                              'Supportati MP4 e MOV • Qualsiasi dimensione',
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
                  _TipBullet(text: 'Carica un video della partita (qualsiasi dimensione)'),
                  _TipBullet(text: 'L\'AI analizza il video localmente senza caricarlo online'),
                  _TipBullet(text: 'Ottieni statistiche complete e scout dettagliato in formato JSON'),
                  _TipBullet(text: 'I dati vengono salvati automaticamente nel tuo profilo'),
                ],
              ),
            ),
            const SizedBox(height: 24),

            if (_selectedVideo != null) ...[
              ElevatedButton.icon(
                onPressed: _isProcessing ? null : _analyzeAndSave,
                icon: _isProcessing
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                      )
                    : const Icon(Icons.analytics_rounded),
                label: Text(_isProcessing ? 'Analisi in corso...' : 'Analizza e Salva'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                ),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: _isProcessing ? null : _pickVideo,
                child: const Text('Cambia Video'),
              ),
            ],

            if (_analysisResults != null) ...[
              const Divider(height: 48),
              const Text(
                'Risultati Analisi Futsal',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        _analysisResults!.reportSummary.overview,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      Text(_analysisResults!.reportSummary.analysis),
                      const Divider(height: 32),
                      
                      // Comparison Headers
                      Row(
                        children: [
                          Expanded(child: Text(_analysisResults!.homeTeam.teamName, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent))),
                          const SizedBox(width: 16, child: Text('VS', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.grey))),
                          Expanded(child: Text(_analysisResults!.awayTeam.teamName, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent))),
                        ],
                      ),
                      const SizedBox(height: 16),
                      
                      _ComparisonRow(
                        label: 'Possesso',
                        homeValue: '${_analysisResults!.homeTeam.possessionAndBuildUp.totalPossessionPercent}%',
                        awayValue: '${_analysisResults!.awayTeam.possessionAndBuildUp.totalPossessionPercent}%',
                      ),
                      _ComparisonRow(
                        label: 'Tiri Totali',
                        homeValue: '${_analysisResults!.homeTeam.offensivePhase.shots.total}',
                        awayValue: '${_analysisResults!.awayTeam.offensivePhase.shots.total}',
                      ),
                      _ComparisonRow(
                        label: 'Expected Goals (xG)',
                        homeValue: _analysisResults!.homeTeam.advancedIndicators.teamXG.toStringAsFixed(1),
                        awayValue: _analysisResults!.awayTeam.advancedIndicators.teamXG.toStringAsFixed(1),
                      ),
                      _ComparisonRow(
                        label: 'Recuperi Palla',
                        homeValue: '${_analysisResults!.homeTeam.defensivePhase.pressureAndRecovery.ballRecoveries}',
                        awayValue: '${_analysisResults!.awayTeam.defensivePhase.pressureAndRecovery.ballRecoveries}',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _ComparisonRow extends StatelessWidget {
  final String label;
  final String homeValue;
  final String awayValue;

  const _ComparisonRow({
    required this.label,
    required this.homeValue,
    required this.awayValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Text(label, style: TextStyle(fontSize: 12, color: Colors.grey[400])),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(child: Text(homeValue, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
              const SizedBox(width: 16),
              Expanded(child: Text(awayValue, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            ],
          ),
          const Divider(height: 16, color: Colors.white10),
        ],
      ),
    );
  }
}
