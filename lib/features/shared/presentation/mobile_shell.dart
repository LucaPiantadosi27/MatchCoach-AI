import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MobileShell extends StatelessWidget {
  final Widget child;
  final GoRouterState state;

  const MobileShell({
    super.key,
    required this.child,
    required this.state,
  });

  static const double _mobileBreakpoint = 768;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < _mobileBreakpoint;

    if (!isMobile) return child;

    final currentPath = state.matchedLocation;
    final currentIndex = _indexForPath(currentPath);

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        height: 60,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          final path = _pathForIndex(index);
          if (path != currentPath) {
            context.go(path);
          }
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined, size: 22),
            selectedIcon: Icon(Icons.home_rounded, size: 22),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.sports_soccer_outlined, size: 22),
            selectedIcon: Icon(Icons.sports_soccer_rounded, size: 22),
            label: 'Lavagna',
          ),
          NavigationDestination(
            icon: Icon(Icons.folder_outlined, size: 22),
            selectedIcon: Icon(Icons.folder_rounded, size: 22),
            label: 'Schemi',
          ),
          NavigationDestination(
            icon: Icon(Icons.videocam_outlined, size: 22),
            selectedIcon: Icon(Icons.videocam_rounded, size: 22),
            label: 'Video AI',
          ),
        ],
      ),
    );
  }

  static int _indexForPath(String path) {
    if (path.startsWith('/home')) return 0;
    if (path.startsWith('/board')) return 1;
    if (path.startsWith('/schemes') || path.startsWith('/recording')) return 2;
    if (path.startsWith('/video')) return 3;
    return 0;
  }

  static String _pathForIndex(int index) {
    switch (index) {
      case 0: return '/home';
      case 1: return '/board';
      case 2: return '/schemes';
      case 3: return '/video';
      default: return '/home';
    }
  }
}
