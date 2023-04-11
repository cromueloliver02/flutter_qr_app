import 'package:flutter/material.dart';

import 'components/splash_view.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static const String name = 'splash';
  static const String path = '/$name';

  @override
  Widget build(BuildContext context) {
    return const SplashView();
  }
}
