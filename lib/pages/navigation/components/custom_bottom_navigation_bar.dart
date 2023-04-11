import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../pages.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIdx = 0;

  void _onTap(BuildContext ctx, {required int idx}) {
    setState(() => _currentIdx = idx);

    switch (idx) {
      case 0:
        ctx.goNamed(QRGeneratorPage.name);
        break;
      case 1:
        ctx.goNamed(QRScannerPage.name);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIdx,
      onTap: (int idx) => _onTap(context, idx: idx),
      items: const [
        BottomNavigationBarItem(
          label: 'QR Generator',
          icon: Icon(Icons.qr_code),
          activeIcon: Icon(Icons.qr_code),
        ),
        BottomNavigationBarItem(
          label: 'QR Scanner',
          icon: Icon(Icons.qr_code_2),
          activeIcon: Icon(Icons.qr_code_2),
        ),
      ],
    );
  }
}
