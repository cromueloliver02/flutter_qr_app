import 'package:flutter/material.dart';

class QrApp extends StatelessWidget {
  const QrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code App',
      theme: ThemeData.dark(),
      home: const Scaffold(
        body: Center(child: Text('QR Code App')),
      ),
    );
  }
}
