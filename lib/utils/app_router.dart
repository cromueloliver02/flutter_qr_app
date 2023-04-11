import 'package:go_router/go_router.dart';

import '../pages/pages.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: SplashPage.path,
    routes: [
      GoRoute(
        path: SplashPage.path,
        name: SplashPage.name,
        builder: (ctx, state) => const SplashPage(),
      ),
    ],
  );
}
