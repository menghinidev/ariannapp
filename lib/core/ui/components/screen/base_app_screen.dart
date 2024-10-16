import 'package:flutter/material.dart';

class BaseAppScreen extends StatelessWidget {
  const BaseAppScreen({
    required this.child,
    this.appBar,
    super.key,
  });

  final Widget child;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: child,
    );
  }
}
