import 'package:flutter/material.dart';

class BaseAppScreen extends StatelessWidget {
  const BaseAppScreen.sliver({
    required this.children,
    required this.title,
    this.fab,
    this.actions,
    this.bottomNavigationBar,
    super.key,
  });

  final List<Widget> children;
  final String title;
  final Widget? fab;
  final List<Widget>? actions;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(title),
            actions: actions,
            floating: true,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(12))),
          ),
          ...children,
        ],
      ),
      floatingActionButton: fab,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
