import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/core/ui/theme/theme_builder.dart';
import 'package:flutter/material.dart';

class EmptyCaseBuilder extends StatelessWidget {
  const EmptyCaseBuilder({
    required this.isEmpty,
    required this.builder,
    this.emptyBuilder,
    this.title,
    this.subtitle,
    super.key,
  }) : assert(
          title != null || emptyBuilder != null,
          'Title or emptyBuilder must be provided',
        );

  final bool isEmpty;
  final Widget Function(BuildContext context)? emptyBuilder;
  final String? title;
  final String? subtitle;
  final Widget Function(BuildContext context) builder;

  @override
  Widget build(BuildContext context) {
    if (isEmpty) {
      if (emptyBuilder == null) {
        return EmptyContentPlaceholder(
          title: title!,
          subtitle: subtitle,
        );
      }
      return emptyBuilder!.call(context);
    }
    return builder(context);
  }
}

class EmptyContentPlaceholder extends StatelessWidget {
  const EmptyContentPlaceholder({
    required this.title,
    this.subtitle,
    super.key,
  });

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: DistanceProvider.screenInsets.padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: context.textTheme.titleMedium,
          ),
          if (subtitle != null) ...[
            DistanceProvider.smallDistance.spacer(),
            Text(
              subtitle!,
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
