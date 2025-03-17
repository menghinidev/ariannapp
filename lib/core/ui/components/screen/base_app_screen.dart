import 'package:ariannapp/core/ui/components/form/keyboard_focus_wrapper.dart';
import 'package:flutter/material.dart';

class BaseAppScreen extends StatelessWidget {
  const BaseAppScreen.sliver({
    required this.children,
    required this.title,
    this.customTitle,
    this.fab,
    this.actions,
    this.bottomNavigationBar,
    this.drawer,
    this.endDrawer,
    super.key,
  });

  final List<Widget> children;
  final String title;
  final Widget? customTitle;
  final Widget? fab;
  final List<Widget>? actions;
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  final Widget? endDrawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KeyboardFocusWrapper(
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: customTitle ?? Text(title),
              actions: actions,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(12))),
            ),
            ...children,
          ],
        ),
      ),
      drawer: drawer,
      endDrawer: endDrawer,
      floatingActionButton: fab,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
