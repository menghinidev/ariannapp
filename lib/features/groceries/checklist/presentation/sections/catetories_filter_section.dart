import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/groceries/checklist/presentation/bloc/groceries_checklist_bloc.dart';
import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesFilterSection extends ConsumerWidget {
  const CategoriesFilterSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(groceriesCheckListFiltersProvider.select((e) => e.categories));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Filtra per categoria',
          style: context.textTheme.titleMedium,
        ),
        DistanceProvider.smallDistance.spacer(),
        Wrap(
          spacing: DistanceProvider.mediumDistance,
          children: [
            for (final category in GroceryCategory.values)
              ChoiceChip(
                label: Text(category.name),
                selected: selected.contains(category),
                onSelected: (value) => ref.read(groceriesCheckListFiltersProvider.notifier).toggleCategory(category),
              ),
          ],
        ),
      ],
    );
  }
}
