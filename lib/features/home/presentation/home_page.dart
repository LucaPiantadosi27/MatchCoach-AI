import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lavagna_tattica/core/theme.dart';
import 'package:lavagna_tattica/features/auth/providers/auth_providers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(userProvider);

    return Scaffold(
      body: userAsync.when(
        loading: () => const Center(
          child: CircularProgressIndicator(color: AppTheme.accentGreen),
        ),
        error: (error, stack) => _buildError(context, ref, error),
        data: (user) {
          if (user == null) {
            return const Center(
              child: CircularProgressIndicator(color: AppTheme.accentGreen),
            );
          }
          return _buildBody(context, ref, user);
        },
      ),
    );
  }

  Widget _buildError(BuildContext context, WidgetRef ref, Object error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 48, color: AppTheme.errorColor),
          const SizedBox(height: 16),
          Text('Errore: $error',
              style: const TextStyle(color: AppTheme.textSecondary)),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => ref.read(userProvider.notifier).refreshUser(),
            child: const Text('Riprova'),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context, WidgetRef ref, user) {
    return CustomScrollView(
      slivers: [
        // ── Hero SliverAppBar
        SliverAppBar(
          expandedHeight: 180,
          pinned: true,
          stretch: true,
          backgroundColor: AppTheme.cardColor,
          surfaceTintColor: Colors.transparent,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: const [StretchMode.zoomBackground],
            background: Stack(
              fit: StackFit.expand,
              children: [
                // Gradient background
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF1A3020), Color(0xFF0D1117)],
                    ),
                  ),
                ),
                // Glow overlay
                Positioned(
                  top: -40,
                  right: -40,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [Color(0x3040C057), Colors.transparent],
                      ),
                    ),
                  ),
                ),
                // Content
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 60, 24, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppTheme.accentGreenDim.withValues(alpha: 0.3),
                              border: Border.all(
                                  color: AppTheme.accentGreenDim, width: 1),
                            ),
                            child: const Icon(Icons.sports_soccer_rounded,
                                size: 22, color: AppTheme.accentGreen),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Lavagna Tattica',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Benvenuto, ${user.email.split('@')[0]}',
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppTheme.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout_rounded, color: AppTheme.textSecondary),
              tooltip: 'Esci',
              onPressed: () async {
                final authRepo = ref.read(authRepositoryProvider);
                await authRepo.signOut();
              },
            ),
          ],
        ),

        // ── Body content
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // ── User card
                _buildUserCard(context, user),
                const SizedBox(height: 28),

                // ── Section title
                const Row(
                  children: [
                    Icon(Icons.grid_view_rounded,
                        size: 16, color: AppTheme.textSecondary),
                    SizedBox(width: 8),
                    Text(
                      'ACCESSO RAPIDO',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.textSecondary,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),

                // ── Action cards
                _ActionCard(
                  icon: Icons.dashboard_rounded,
                  title: 'Lavagna Tattica',
                  subtitle: 'Crea un nuovo schema',
                  accentColor: AppTheme.accentGreen,
                  onTap: () => context.go('/board'),
                ),
                const SizedBox(height: 12),
                _ActionCard(
                  icon: Icons.video_library_rounded,
                  title: 'Registrazioni',
                  subtitle: '${user.schemesCount} registrazioni salvate',
                  accentColor: const Color(0xFF7C4DFF),
                  onTap: () => context.go('/schemes'),
                ),
                const SizedBox(height: 12),
                _ActionCard(
                  icon: Icons.videocam_rounded,
                  title: 'Analisi Video',
                  subtitle: 'Analizza automaticamente le tue partite',
                  accentColor: Colors.orange,
                  locked: false,
                  onTap: () => context.go('/video'),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUserCard(BuildContext context, user) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.cardColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppTheme.sidebarBorderColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Row(
              children: [
                // Avatar
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF388E3C), Color(0xFF1B5E20)],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.accentGreen.withValues(alpha: 0.3),
                        blurRadius: 12,
                      ),
                    ],
                  ),
                  child: const Icon(Icons.person_rounded,
                      size: 26, color: Colors.white),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.email,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textPrimary,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 5),
                      _buildBadge(user),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              height: 1,
              color: AppTheme.sidebarBorderColor,
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Registrazioni salvate',
                  style: TextStyle(
                      color: AppTheme.textSecondary, fontSize: 13),
                ),
                Row(
                  children: [
                    Text(
                      user.isPremium
                          ? '${user.schemesCount}'
                          : '${user.schemesCount}/10',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: user.canSaveScheme
                            ? AppTheme.accentGreen
                            : AppTheme.errorColor,
                      ),
                    ),
                    if (user.isPremium)
                      const Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text('∞',
                            style: TextStyle(
                                color: AppTheme.accentGreen,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBadge(user) {
    final Color badgeColor = user.isAdmin
        ? const Color(0xFFE53935)
        : user.isPremium
            ? Colors.amber
            : AppTheme.textMuted;
    final String label = user.isAdmin
        ? '🛡️ ADMIN'
        : user.isPremium
            ? '⭐ Premium'
            : 'Free';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
        color: badgeColor.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: badgeColor.withValues(alpha: 0.5)),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w700,
          color: badgeColor,
        ),
      ),
    );
  }
}

// ── Action Card ─────────────────────────────────────────────────
class _ActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color accentColor;
  final VoidCallback onTap;
  final bool locked;

  const _ActionCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.accentColor,
    required this.onTap,
    this.locked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.cardColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppTheme.sidebarBorderColor),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          splashColor: accentColor.withValues(alpha: 0.08),
          highlightColor: accentColor.withValues(alpha: 0.04),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                // Accent left bar
                Container(
                  width: 4,
                  height: 40,
                  decoration: BoxDecoration(
                    color: locked
                        ? AppTheme.textMuted
                        : accentColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(width: 14),
                // Icon
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: (locked ? AppTheme.textMuted : accentColor)
                        .withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    icon,
                    size: 22,
                    color: locked ? AppTheme.textMuted : accentColor,
                  ),
                ),
                const SizedBox(width: 14),
                // Text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: locked
                              ? AppTheme.textSecondary
                              : AppTheme.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppTheme.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right_rounded,
                  color: locked ? AppTheme.textMuted : AppTheme.textSecondary,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
