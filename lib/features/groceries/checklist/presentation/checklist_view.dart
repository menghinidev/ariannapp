import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/utils/extensions/riverpod_extensions.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/groceries/checklist/presentation/bloc/groceries_checklist_bloc.dart';
import 'package:ariannapp/features/groceries/checklist/presentation/catetories_filter.dart';
import 'package:ariannapp/features/groceries/checklist/presentation/checklist_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroceriesCheckListView extends ConsumerWidget {
  const GroceriesCheckListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shelf = ref.watch(groceriesCheckListOrderManagerProvider);
    return shelf.loadUntil(
      onLoaded: (data) => EmptyCaseBuilder(
        isEmpty: data.isEmpty,
        title: 'Nessun elemento',
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: DistanceProvider.screenInsets.padding.removeBottom,
              child: const CategoriesFilter(),
            ),
            Expanded(
              child: ReorderableListView.builder(
                padding: DistanceProvider.screenInsets.padding.removeBottom,
                itemCount: data.length,
                onReorder: ref.read(groceriesCheckListOrderManagerProvider.notifier).reorder,
                itemBuilder: (context, index) => GroceriesCheckListItem(
                  item: data[index],
                  key: ValueKey(index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
