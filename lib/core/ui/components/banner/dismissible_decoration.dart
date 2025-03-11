import 'package:ariannapp/core/ui/theme/theme_builder.dart';
import 'package:flutter/material.dart';

class DismissibleDeleteDecoration extends StatelessWidget {
  const DismissibleDeleteDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const _DismissibleDecoration(
      color: Colors.red,
      icon: Icon(Icons.delete, color: Colors.white),
    );
  }
}

class DismissibleCompleteDecoration extends StatelessWidget {
  const DismissibleCompleteDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _DismissibleDecoration(
      decoration: BoxDecoration(
        color: context.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(24),
      ),
      icon: const Icon(Icons.done_all_outlined, color: Colors.white),
    );
  }
}

class _DismissibleDecoration extends StatelessWidget {
  const _DismissibleDecoration({
    required this.icon,
    this.color,
    this.decoration,
  });

  final Widget icon;
  final Color? color;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      decoration: decoration,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(right: 20),
      child: icon,
    );
  }
}
