import 'package:flutter/material.dart';

import 'qr_code_scanner.dart';

class QRScannerView extends StatelessWidget {
  const QRScannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR Code Scanner')),
      body: const QRCodeScanner(),
    );
  }
}
