import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BaseAppScreen extends StatelessWidget {
  const BaseAppScreen({
    required this.child,
    required this.title,
    this.bottomAppBarWidget,
    this.actions,
    this.fab,
    super.key,
  });

  final Widget child;
  final String title;
  final Widget? fab;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottomAppBarWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        title: title,
        bottomAppBarWidget: bottomAppBarWidget,
        actions: actions,
      ),
      body: child,
      floatingActionButton: fab,
    );
  }
}

class SimpleAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const SimpleAppBar({
    required this.title,
    this.bottomAppBarWidget,
    this.actions,
    super.key,
  });

  final String title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottomAppBarWidget;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight * (bottomAppBarWidget == null ? 1 : 2));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: Text(title),
      bottom: bottomAppBarWidget,
      actions: actions,
    );
  }
}
