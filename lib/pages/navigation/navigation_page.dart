import 'package:flutter/material.dart';

import 'components/navigation_view.dart';

class NavigationPage extends StatelessWidget {
  final Widget child;

  const NavigationPage({
    super.key,
    required this.child,
  });

  static const String name = 'navigation';
  static const String path = '/$name';

  @override
  Widget build(BuildContext context) {
    return NavigationView(child: child);
  }
}
