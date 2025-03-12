import 'package:ariannapp/core/ui/theme/theme_builder.dart';
import 'package:flutter/material.dart';

class CustomDismissible<T> extends StatelessWidget {
  const CustomDismissible({
    required this.background,
    required this.value,
    required this.onDismissed,
    required this.child,
    super.key,
  });

  final T value;
  final void Function() onDismissed;
  final Widget child;
  final Widget background;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(value),
      direction: DismissDirection.endToStart,
      background: background,
      onDismissed: (_) => onDismissed.call(),
      child: child,
    );
  }
}

class DismissibleDeleteDecoration extends StatelessWidget with _DismissibleDecorationFactory {
  const DismissibleDeleteDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return _DismissibleDecoration(
      decoration: createDecoration(colorScheme.errorContainer),
      icon: Icon(
        Icons.delete,
        color: colorScheme.onErrorContainer,
      ),
    );
  }
}

class DismissibleCompleteDecoration extends StatelessWidget with _DismissibleDecorationFactory {
  const DismissibleCompleteDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return _DismissibleDecoration(
      decoration: createDecoration(colorScheme.secondaryContainer),
      icon: Icon(
        Icons.done_all_outlined,
        color: colorScheme.onSecondaryContainer,
      ),
    );
  }
}

class _DismissibleDecoration extends StatelessWidget {
  const _DismissibleDecoration({
    required this.icon,
    this.decoration,
  });

  final Widget icon;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(right: 20),
      child: icon,
    );
  }
}

mixin _DismissibleDecorationFactory {
  BoxDecoration createDecoration(Color color) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(24),
    );
  }
}
