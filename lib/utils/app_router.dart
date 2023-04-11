import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/pages.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> _rootNavigator =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  static final GlobalKey<NavigatorState> _shellNavigator =
      GlobalKey<NavigatorState>(debugLabel: 'shell');

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigator,
    initialLocation: SplashPage.path,
    routes: [
      GoRoute(
        path: SplashPage.path,
        name: SplashPage.name,
        builder: (ctx, state) => const SplashPage(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigator,
        builder: (BuildContext ctx, GoRouterState state, Widget child) {
          return NavigationPage(child: child);
        },
        routes: [
          GoRoute(
            path: QRGeneratorPage.path,
            name: QRGeneratorPage.name,
            // builder: (ctx, state) => const QRGeneratorPage(),
            pageBuilder: (ctx, state) {
              return const NoTransitionPage(child: QRGeneratorPage());
            },
          ),
          GoRoute(
            path: QRScannerPage.path,
            name: QRScannerPage.name,
            // builder: (ctx, state) => const QRScannerPage(),
            pageBuilder: (ctx, state) {
              return const NoTransitionPage(child: QRScannerPage());
            },
          ),
        ],
      ),
    ],
  );
}
