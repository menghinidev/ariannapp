import 'dart:ui';

import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/checklist/presentation/bloc/groceries_checklist_bloc.dart';
import 'package:ariannapp/features/groceries/checklist/presentation/components/checklist_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckListListViewSection extends ConsumerWidget {
  const CheckListListViewSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shelf = ref.watch(groceriesCheckListOrderManagerProvider);
    return BaseSliverLoader(
      value: shelf,
      builder: (context, data) => EmptyCaseBuilder.sliver(
        isEmpty: data.isEmpty,
        title: 'Nessun elemento',
        subtitle: 'Aggiungi un nuovo elemento alla lista',
        builder: (context) => SliverPadding(
          padding: DistanceProvider.screenInsets.padding.removeBottom,
          sliver: SliverReorderableList(
            itemCount: data.length,
            onReorder: (old, current) => ref.read(groceriesCheckListOrderManagerProvider.notifier).reorder(
                  context,
                  old,
                  current,
                ),
            itemBuilder: (context, index) => CustomDismissible(
              key: ValueKey(data[index].id),
              value: index,
              background: const DismissibleCompleteDecoration(),
              onDismissed: () => ref.read(groceriesCheckListOrderManagerProvider.notifier).remove(
                    context,
                    item: data[index],
                  ),
              child: ReorderableDelayedDragStartListener(
                index: index,
                child: GroceriesCheckListWidget(
                  item: data[index],
                  position: index,
                ),
              ),
            ),
            proxyDecorator: (child, index, animation) => AnimatedBuilder(
              animation: animation,
              builder: (context, child) => _builder(
                context,
                child,
                animation: animation,
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }

  Widget _builder(BuildContext context, Widget? child, {required Animation<double> animation}) {
    final animValue = Curves.easeInOut.transform(animation.value);
    final elevation = lerpDouble(0, 6, animValue)!;
    return Material(
      elevation: elevation,
      child: child,
    );
  }
}
