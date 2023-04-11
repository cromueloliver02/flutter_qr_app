import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: 'QR Generator',
          icon: const Icon(Icons.qr_code),
          activeIcon: Icon(Icons.qr_code, color: theme.primaryColor),
        ),
        BottomNavigationBarItem(
          label: 'QR Scanner',
          icon: const Icon(Icons.qr_code_2),
          activeIcon: Icon(Icons.qr_code_2, color: theme.primaryColor),
        ),
      ],
    );
  }
}
