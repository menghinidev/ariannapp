import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/checklist/presentation/components/checklist_list_item.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/get_checklist/get_checklist_use_case.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/remove_grocery_item/command/removegroceryitemcommand.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/remove_grocery_item/remove_grocery_item_use_case.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:ariannapp/features/groceries/shared/routes/shelf_routes.dart';
import 'package:ariannapp/features/home/presentation/sections/base_home_section.dart';
import 'package:ariannapp/navigation/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroceriesDashboardSection extends ConsumerWidget {
  const GroceriesDashboardSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groceries = ref.watch(groceriesChecklistProvider.select((data) => data.valueOrNull?.take(3).toList()));
    return BaseDashboardSection(
      title: 'Lista della spesa',
      emptyCaseTitle: 'Non sono presenti elementi',
      values: groceries,
      showDivider: true,
      headerButtonAction: () => context.goRelative(GroceriesRoutes.checklist),
      itemBuilder: (context, data) => CustomDismissible(
        value: data,
        background: const DismissibleCompleteDecoration(),
        onDismissed: () => _removeItem(context, ref, data),
        child: GroceriesCheckListWidget(
          item: data,
          position: groceries?.indexOf(data) ?? 0,
        ),
      ),
    );
  }

  void _removeItem(BuildContext context, WidgetRef ref, GroceriesCheckListItem item) {
    final command = RemoveGroceryItemCommand(item: item, context: context);
    ref.read(removeGroceryItemUseCaseProvider).execute(command);
  }
}
