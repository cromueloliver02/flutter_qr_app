import 'package:flutter/material.dart';

import 'utils/utils.dart';

class QrApp extends StatelessWidget {
  const QrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'QR Code App',
      theme: ThemeData.dark(),
      routerConfig: AppRouter.router,
    );
  }
}
