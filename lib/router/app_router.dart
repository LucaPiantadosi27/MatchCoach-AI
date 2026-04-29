import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lavagna_tattica/core/supabase_client.dart';
import 'package:lavagna_tattica/features/auth/presentation/login_page.dart';
import 'package:lavagna_tattica/features/auth/presentation/register_page.dart';
import 'package:lavagna_tattica/features/home/presentation/home_page.dart';
import 'package:lavagna_tattica/features/tactical_board/presentation/tactical_board_page.dart';
import 'package:lavagna_tattica/features/tactical_board/presentation/schemes_list_page.dart';
import 'package:lavagna_tattica/features/tactical_board/presentation/recording_viewer_page.dart';
import 'package:lavagna_tattica/features/video_analysis/presentation/video_analysis_page.dart';
import 'package:lavagna_tattica/features/premium/presentation/usage_stats_page.dart';
import 'package:lavagna_tattica/features/install/presentation/install_page.dart';
import 'package:lavagna_tattica/features/shared/presentation/mobile_shell.dart';

/// Listenable that notifies GoRouter when auth state changes
class AuthChangeNotifier extends ChangeNotifier {
  late final StreamSubscription _subscription;

  AuthChangeNotifier() {
    _subscription = supabase.auth.onAuthStateChange.listen((_) {
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

final _authChangeNotifier = AuthChangeNotifier();

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    refreshListenable: _authChangeNotifier,
    redirect: (context, state) {
      final isLoggedIn = supabase.auth.currentSession != null;
      final isAuthRoute = state.matchedLocation == '/login' ||
          state.matchedLocation == '/register';

      if (!isLoggedIn && !isAuthRoute) {
        return '/login';
      }
      if (isLoggedIn && isAuthRoute) {
        return '/home';
      }
      return null;
    },
    routes: [
      // Auth routes (no bottom bar)
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterPage(),
      ),
      // Board (full-screen, no bottom bar)
      GoRoute(
        path: '/board',
        builder: (context, state) => const TacticalBoardPage(),
      ),
      GoRoute(
        path: '/install',
        builder: (context, state) => const InstallPage(),
      ),
      // Shell with mobile bottom navigation bar
      ShellRoute(
        builder: (context, state, child) {
          return MobileShell(state: state, child: child);
        },
        routes: [
          GoRoute(
            path: '/home',
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: '/schemes',
            builder: (context, state) => const SchemesListPage(),
          ),
          GoRoute(
            path: '/recording/:id',
            builder: (context, state) {
              final recordingId = state.pathParameters['id']!;
              return RecordingViewerPage(recordingId: recordingId);
            },
          ),
          GoRoute(
            path: '/video',
            builder: (context, state) => const VideoAnalysisPage(),
          ),
          GoRoute(
            path: '/usage',
            builder: (context, state) => const UsageStatsPage(),
          ),
        ],
      ),
    ],
  );
});
