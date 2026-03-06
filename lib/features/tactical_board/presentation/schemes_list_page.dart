import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lavagna_tattica/core/theme.dart';
import 'package:lavagna_tattica/features/auth/providers/auth_providers.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/saved_recording.dart';
import 'package:lavagna_tattica/features/tactical_board/data/recording_repository.dart';
import 'package:lavagna_tattica/features/tactical_board/providers/board_provider.dart';

final recordingRepositoryProvider = Provider((ref) => RecordingRepository());

final userRecordingsProvider = FutureProvider<List<SavedRecording>>((ref) async {
  final user = ref.watch(userProvider).valueOrNull;
  if (user == null) return [];
  return ref.read(recordingRepositoryProvider).getUserRecordings(user.id);
});

class SchemesListPage extends ConsumerWidget {
  const SchemesListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recordingsAsync = ref.watch(userRecordingsProvider);

    return Scaffold(
      backgroundColor: AppTheme.surfaceColor,
      body: CustomScrollView(
        slivers: [
          // ── SliverAppBar
          SliverAppBar(
            pinned: true,
            expandedHeight: 120,
            backgroundColor: AppTheme.cardColor,
            surfaceTintColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_rounded,
                  color: AppTheme.textSecondary),
              onPressed: () => context.go('/home'),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFF1A1040), Color(0xFF0D1117)],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -30,
                    right: -20,
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [Color(0x307C4DFF), Colors.transparent],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 60, 20, 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Icon(Icons.video_library_rounded,
                              size: 20, color: Color(0xFF9575CD)),
                          SizedBox(width: 10),
                          Text(
                            'Registrazioni',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ── Content
          recordingsAsync.when(
            loading: () => const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(color: Color(0xFF9575CD)),
              ),
            ),
            error: (err, _) => SliverFillRemaining(
              child: Center(
                child: Text('Errore: $err',
                    style: const TextStyle(color: AppTheme.errorColor)),
              ),
            ),
            data: (recordings) {
              if (recordings.isEmpty) {
                return SliverFillRemaining(
                  child: _buildEmptyState(context, ref),
                );
              }
              return SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => _RecordingCard(
                      recording: recordings[index],
                      onDelete: () async {
                        final confirm = await _confirmDelete(
                            context, recordings[index].name);
                        if (confirm == true) {
                          await ref
                              .read(recordingRepositoryProvider)
                              .deleteRecording(recordings[index].id);
                          ref.invalidate(userRecordingsProvider);
                        }
                      },
                    ),
                    childCount: recordings.length,
                  ),
                ),
              );
            },
          ),
        ],
      ),

      // ── FAB
      floatingActionButton: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF7C4DFF), Color(0xFF512DA8)],
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color(0x557C4DFF),
              blurRadius: 16,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: FloatingActionButton.extended(
          onPressed: () {
            ref.read(isNewSchemeProvider.notifier).state = true;
            ref.read(boardProvider.notifier).reset();
            context.go('/board');
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          icon: const Icon(Icons.add_rounded, color: Colors.white),
          label: const Text(
            'Nuova Registrazione',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF7C4DFF).withValues(alpha: 0.1),
              border: Border.all(
                  color: const Color(0xFF7C4DFF).withValues(alpha: 0.3)),
            ),
            child: const Icon(
              Icons.video_library_rounded,
              size: 52,
              color: Color(0xFF9575CD),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Nessuna registrazione',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Usa la lavagna tattica per\ncrearne una nuova',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: AppTheme.textSecondary,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 28),
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF7C4DFF), Color(0xFF512DA8)],
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x557C4DFF),
                  blurRadius: 14,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  ref.read(isNewSchemeProvider.notifier).state = true;
                  ref.read(boardProvider.notifier).reset();
                  context.go('/board');
                },
                borderRadius: BorderRadius.circular(10),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                  child: Text(
                    'Vai alla Lavagna',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool?> _confirmDelete(BuildContext context, String name) {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardColorElevated,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: const BorderSide(color: AppTheme.sidebarBorderColor),
        ),
        title: const Text('Elimina Registrazione',
            style: TextStyle(color: AppTheme.textPrimary, fontSize: 16)),
        content: Text('Vuoi eliminare "$name"?',
            style: const TextStyle(color: AppTheme.textSecondary)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Annulla',
                style: TextStyle(color: AppTheme.textSecondary)),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Elimina',
                style: TextStyle(
                    color: AppTheme.errorColor,
                    fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }
}

// ── Recording Card ────────────────────────────────────────────────
class _RecordingCard extends StatelessWidget {
  final SavedRecording recording;
  final VoidCallback onDelete;

  const _RecordingCard({required this.recording, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.cardColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppTheme.sidebarBorderColor),
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            onTap: () => context.go('/recording/${recording.id}'),
            borderRadius: BorderRadius.circular(12),
            splashColor:
                const Color(0xFF7C4DFF).withValues(alpha: 0.08),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: [
                  // ── Thumb
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFF7C4DFF), Color(0xFF512DA8)],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.play_circle_rounded,
                        color: Colors.white, size: 26),
                  ),
                  const SizedBox(width: 14),
                  // ── Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recording.name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.textPrimary,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            const Icon(Icons.access_time_rounded,
                                size: 11, color: AppTheme.textMuted),
                            const SizedBox(width: 4),
                            Text(
                              recording.createdAt.toLocal().toString().split('.')[0],
                              style: const TextStyle(
                                  fontSize: 11, color: AppTheme.textSecondary),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  // Duration chip
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF7C4DFF).withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: const Color(0xFF7C4DFF).withValues(alpha: 0.4)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.play_arrow_rounded,
                            size: 12, color: Color(0xFF9575CD)),
                        const SizedBox(width: 3),
                        Text(
                          '${recording.recording.duration.toStringAsFixed(1)}s',
                          style: const TextStyle(
                            fontSize: 11,
                            color: Color(0xFF9575CD),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 6),
                  // Delete
                  IconButton(
                    icon: const Icon(Icons.delete_outline_rounded,
                        size: 18, color: AppTheme.textMuted),
                    onPressed: onDelete,
                    tooltip: 'Elimina',
                    padding: const EdgeInsets.all(6),
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
