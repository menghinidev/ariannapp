import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/get_checklist/get_checklist_use_case.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/remove_grocery_item/command/removegroceryitemcommand.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/remove_grocery_item/remove_grocery_item_use_case.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:ariannapp/features/groceries/shared/routes/shelf_routes.dart';
import 'package:ariannapp/features/home/presentation/sections/base_home_section.dart';
import 'package:ariannapp/navigation/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroceriesDashboardSection extends ConsumerWidget {
  const GroceriesDashboardSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groceries = ref.watch(groceriesCheckListProvider.select((data) => data.valueOrNull?.take(3).toList()));
    return BaseDashboardSection(
      values: groceries,
      itemBuilder: (context, data) => _GroceriesListTile(item: data),
      emptyCaseTitle: 'Non sono presenti elementi',
      title: 'Lista della spesa',
      onOpenAll: () => context.goRelative(GroceriesRoutes.checklist),
    );
  }
}

class _GroceriesListTile extends ConsumerWidget {
  const _GroceriesListTile({
    required this.item,
  });

  final GroceriesCheckListItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: ListTile(
        contentPadding: DistanceProvider.cardInsets.padding.removeTop.removeBottom,
        title: Text(item.name),
        subtitle: Text(item.category.label),
        trailing: IconButton(
          icon: const Icon(Icons.check_circle_outline_outlined),
          onPressed: () =>
              ref.read(removeGroceryItemUseCaseProvider).call(RemoveGroceryItemCommand(item: item, context: context)),
        ),
      ),
    );
  }
}
