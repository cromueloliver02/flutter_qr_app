import 'package:flutter/material.dart';

import 'custom_bottom_navigation_bar.dart';

class NavigationView extends StatelessWidget {
  final Widget child;

  const NavigationView({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
