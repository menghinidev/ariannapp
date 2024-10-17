import 'package:ariannapp/core/ui/theme/theme_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BaseAppScreen extends StatelessWidget {
  const BaseAppScreen({
    required this.child,
    required this.title,
    this.bottomAppBarWidget,
    this.fab,
    super.key,
  });

  final Widget child;
  final String title;
  final Widget? fab;
  final PreferredSizeWidget? bottomAppBarWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: title, bottomAppBarWidget: bottomAppBarWidget),
      body: child,
      floatingActionButton: fab,
    );
  }
}

class SimpleAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const SimpleAppBar({
    required this.title,
    this.bottomAppBarWidget,
    super.key,
  });

  final String title;
  final PreferredSizeWidget? bottomAppBarWidget;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight * (bottomAppBarWidget == null ? 1 : 2));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(applicationThemeModeProvider);
    return AppBar(
      title: Text(title),
      bottom: bottomAppBarWidget,
      actions: [
        Switch.adaptive(
          value: theme == ThemeMode.light,
          onChanged: (_) => ref.read(applicationThemeModeProvider.notifier).toggle(),
          thumbIcon: WidgetStatePropertyAll(
            theme == ThemeMode.light ? const Icon(Icons.dark_mode) : const Icon(Icons.light_mode),
          ),
        ),
      ],
    );
  }
}
