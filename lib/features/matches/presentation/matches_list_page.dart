import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lavagna_tattica/core/theme.dart';
import 'package:lavagna_tattica/features/matches/data/models/match_model.dart';
import 'package:lavagna_tattica/features/matches/data/repositories/matches_repository.dart';
import 'package:go_router/go_router.dart';
import 'package:lavagna_tattica/features/auth/providers/auth_providers.dart';
import 'package:lavagna_tattica/features/matches/providers/matches_providers.dart';

class MatchesListPage extends ConsumerWidget {
  const MatchesListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchesAsync = ref.watch(matchesProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ── Actions bar ───────────────────────────────────────
        Container(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          decoration: const BoxDecoration(
            color: AppTheme.cardColor,
            border: Border(bottom: BorderSide(color: AppTheme.sidebarBorderColor)),
          ),
          child: Row(
            children: [
              const Text('Partite', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppTheme.textPrimary)),
              const Spacer(),
              Material(
                color: AppTheme.accentGreenDim,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () => _showCreateMatchDialog(context, ref),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Row(
                      children: [
                        Icon(Icons.add_rounded, size: 14, color: Colors.white),
                        SizedBox(width: 6),
                        Text('Nuova partita', style: TextStyle(fontSize: 12, color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        // ── List ──────────────────────────────────────────────
        Expanded(
          child: matchesAsync.when(
            loading: () => const Center(child: CircularProgressIndicator(color: AppTheme.accentGreen)),
            error: (e, _) => Center(child: Text('Errore: $e', style: const TextStyle(color: AppTheme.errorColor))),
            data: (matches) {
              if (matches.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.sports_soccer_outlined, size: 52, color: AppTheme.textMuted),
                      const SizedBox(height: 16),
                      const Text('Nessuna partita ancora', style: TextStyle(fontSize: 15, color: AppTheme.textSecondary)),
                      const SizedBox(height: 8),
                      const Text('Crea una partita o importa dal calendario', style: TextStyle(fontSize: 13, color: AppTheme.textMuted)),
                      const SizedBox(height: 24),
                      ElevatedButton.icon(
                        onPressed: () => _showCreateMatchDialog(context, ref),
                        icon: const Icon(Icons.add_rounded, size: 16),
                        label: const Text('Nuova partita'),
                      ),
                    ],
                  ),
                );
              }
              return ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemCount: matches.length,
                itemBuilder: (ctx, i) => _MatchRow(
                  match: matches[i],
                  onDelete: () async {
                    await ref.read(matchesRepositoryProvider).deleteMatch(matches[i].id);
                    ref.invalidate(matchesProvider);
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void _showCreateMatchDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (_) => _CreateMatchDialog(onCreated: () => ref.invalidate(matchesProvider)),
    );
  }
}

class _MatchRow extends StatelessWidget {
  final MatchModel match;
  final VoidCallback onDelete;
  const _MatchRow({required this.match, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: AppTheme.cardColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppTheme.sidebarBorderColor),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _ColorDot(color: match.team1Color),
            const SizedBox(width: 4),
            _ColorDot(color: match.team2Color),
          ],
        ),
        title: Text(match.displayTitle,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppTheme.textPrimary)),
        subtitle: match.matchDate != null
            ? Text(DateFormat('dd/MM/yyyy').format(match.matchDate!),
                style: const TextStyle(fontSize: 11, color: AppTheme.textMuted))
            : null,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios_rounded, size: 14, color: AppTheme.textSecondary),
              onPressed: () => context.push('/matches/${match.id}'),
              tooltip: 'Apri',
            ),
            IconButton(
              icon: const Icon(Icons.delete_outline_rounded, size: 16, color: AppTheme.textMuted),
              onPressed: onDelete,
              tooltip: 'Elimina',
            ),
          ],
        ),
      ),
    );
  }
}

class _ColorDot extends StatelessWidget {
  final String? color;
  const _ColorDot({required this.color});

  @override
  Widget build(BuildContext context) {
    Color c = AppTheme.textMuted;
    if (color != null) {
      try {
        c = Color(int.parse(color!.replaceFirst('#', '0xFF')));
      } catch (_) {}
    }
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: c,
        shape: BoxShape.circle,
        border: Border.all(color: AppTheme.sidebarBorderColor, width: 1),
      ),
    );
  }
}

class _CreateMatchDialog extends ConsumerStatefulWidget {
  final VoidCallback onCreated;
  const _CreateMatchDialog({required this.onCreated});

  @override
  ConsumerState<_CreateMatchDialog> createState() => _CreateMatchDialogState();
}

class _CreateMatchDialogState extends ConsumerState<_CreateMatchDialog> {
  final _homeCtrl = TextEditingController();
  final _awayCtrl = TextEditingController();
  final _venueCtrl = TextEditingController();
  DateTime? _date;
  bool _saving = false;

  @override
  void dispose() { _homeCtrl.dispose(); _awayCtrl.dispose(); _venueCtrl.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppTheme.cardColor,
      title: const Text('Nuova partita', style: TextStyle(color: AppTheme.textPrimary)),
      content: SizedBox(
        width: 360,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(children: [
              Expanded(child: TextField(controller: _homeCtrl, decoration: const InputDecoration(labelText: 'Squadra casa *'))),
              const SizedBox(width: 12),
              Expanded(child: TextField(controller: _awayCtrl, decoration: const InputDecoration(labelText: 'Squadra ospite *'))),
            ]),
            const SizedBox(height: 12),
            Row(children: [
              Expanded(
                child: InkWell(
                  onTap: () async {
                    final d = await showDatePicker(context: context, initialDate: DateTime.now(),
                        firstDate: DateTime(2020), lastDate: DateTime(2030));
                    if (d != null) setState(() => _date = d);
                  },
                  child: InputDecorator(
                    decoration: const InputDecoration(labelText: 'Data'),
                    child: Text(_date != null ? DateFormat('dd/MM/yyyy').format(_date!) : 'Seleziona',
                        style: TextStyle(fontSize: 14, color: _date != null ? AppTheme.textPrimary : AppTheme.textMuted)),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(child: TextField(controller: _venueCtrl, decoration: const InputDecoration(labelText: 'Luogo'))),
            ]),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppTheme.sidebarSectionColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppTheme.sidebarBorderColor),
              ),
              child: const Row(
                children: [
                  Icon(Icons.info_outline_rounded, size: 14, color: AppTheme.textMuted),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'I colori e i nomi delle squadre verranno richiesti al momento della prima analisi video.',
                      style: TextStyle(fontSize: 11, color: AppTheme.textMuted),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Annulla')),
        ElevatedButton(
          onPressed: _saving ? null : () async {
            if (_homeCtrl.text.trim().isEmpty || _awayCtrl.text.trim().isEmpty) return;
            setState(() => _saving = true);
            final userId = ref.read(userProvider).valueOrNull?.id ?? '';
            final match = MatchModel(
              id: '', userId: userId,
              homeTeam: _homeCtrl.text.trim(),
              awayTeam: _awayCtrl.text.trim(),
              matchDate: _date,
              venue: _venueCtrl.text.trim().isEmpty ? null : _venueCtrl.text.trim(),
              createdAt: DateTime.now(),
            );
            await ref.read(matchesRepositoryProvider).createMatch(match);
            widget.onCreated();
            if (mounted) Navigator.pop(context);
          },
          child: _saving
              ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2))
              : const Text('Crea'),
        ),
      ],
    );
  }
}
