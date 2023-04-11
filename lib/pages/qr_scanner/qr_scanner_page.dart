import 'package:flutter/material.dart';

import 'components/qr_scanner_view.dart';

class QRScannerPage extends StatelessWidget {
  const QRScannerPage({super.key});

  static const String name = 'qr-scanner';
  static const String path = '/$name';

  @override
  Widget build(BuildContext context) {
    return const QRScannerView();
  }
}
