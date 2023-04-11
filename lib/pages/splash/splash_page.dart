import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages.dart';
import 'components/splash_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const String name = 'splash';
  static const String path = '/$name';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return const SplashView();
  }

  @override
  void initState() {
    super.initState();
    _goToHomePage(context);
  }

  void _goToHomePage(BuildContext ctx) async {
    await Future.delayed(const Duration(seconds: 2));

    if (mounted) {
      ctx.goNamed(QRGeneratorPage.name);
    }
  }
}
