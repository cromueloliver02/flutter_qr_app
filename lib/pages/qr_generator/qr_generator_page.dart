import 'package:flutter/material.dart';

import 'components/qr_generator_view.dart';

class QRGeneratorPage extends StatelessWidget {
  const QRGeneratorPage({super.key});

  static const String name = 'qr-generator';
  static const String path = '/$name';

  @override
  Widget build(BuildContext context) {
    return const QRGeneratorView();
  }
}
