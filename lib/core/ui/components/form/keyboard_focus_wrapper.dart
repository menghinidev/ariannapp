import 'package:flutter/material.dart';

class KeyboardFocusWrapper extends StatelessWidget {
  const KeyboardFocusWrapper({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onTap(context),
      child: child,
    );
  }

  void _onTap(BuildContext context) {
    final focusScopeNode = FocusScope.of(context);
    if (!focusScopeNode.hasPrimaryFocus) focusScopeNode.unfocus();
  }
}
