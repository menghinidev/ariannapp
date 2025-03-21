import 'package:ariannapp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BaseDashboardSection<T> extends ConsumerWidget {
  const BaseDashboardSection({
    required this.values,
    required this.itemBuilder,
    required this.title,
    required this.emptyCaseTitle,
    super.key,
    this.emptyCaseSubtitle,
    this.headerButtonAction,
    this.headerButtonLabel = 'Visualizza',
    this.showDivider = false,
  });

  final List<T>? values;
  final void Function()? headerButtonAction;
  final String headerButtonLabel;
  final String title;
  final String emptyCaseTitle;
  final String? emptyCaseSubtitle;
  final Widget Function(BuildContext, T) itemBuilder;
  final bool showDivider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LoadingSwitcher(
      value: values,
      margin: DistanceProvider.screenInsets.padding,
      builder: (context, data) => Card(
        elevation: 5,
        color: context.colorScheme.tertiaryContainer.withOpacity(0.5),
        shadowColor: context.colorScheme.tertiaryContainer.withOpacity(0.2),
        margin: DistanceProvider.screenInsets.padding,
        shape: DistanceProvider.cardRadius.roundedShape,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: DistanceProvider.screenInsets.padding.removeBottom,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: context.textTheme.titleLarge,
                    ),
                  ),
                  if (headerButtonAction != null)
                    TextButton(
                      onPressed: headerButtonAction,
                      child: Text(headerButtonLabel),
                    ),
                ],
              ),
            ),
            EmptyCaseBuilder(
              isEmpty: data.isEmpty,
              title: emptyCaseTitle,
              subtitle: emptyCaseSubtitle,
              builder: (context) => ListView.separated(
                itemCount: data.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                padding: DistanceProvider.screenInsets.padding.removeTop,
                separatorBuilder: (context, index) => showDivider
                    ? const Divider(height: DistanceProvider.smallDistance)
                    : DistanceProvider.smallDistance.spacer(),
                itemBuilder: (context, index) => itemBuilder(context, data[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
