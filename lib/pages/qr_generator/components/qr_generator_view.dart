import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../utils/utils.dart';
import 'qr_code_generator.dart';

class QRGeneratorView extends StatelessWidget {
  const QRGeneratorView({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      gestures: kDissmissKeyboardGestures,
      child: Scaffold(
        appBar: AppBar(title: const Text('QR Code Generator')),
        body: const QRCodeGenerator(),
      ),
    );
  }
}
