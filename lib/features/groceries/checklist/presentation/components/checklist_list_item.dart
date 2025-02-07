import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/remove_grocery_item/command/removegroceryitemcommand.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/remove_grocery_item/remove_grocery_item_use_case.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart' as model;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroceriesCheckListItem extends ConsumerWidget {
  const GroceriesCheckListItem({
    required this.item,
    super.key,
  });

  final model.GroceriesCheckListItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(item.name),
      subtitle: Text(item.createdAt.toNiceDate),
      trailing: IconButton(
        icon: const Icon(Icons.check_circle_outline_outlined),
        onPressed: () => ref
            .read(removeGroceryItemUseCaseProvider)
            .call(RemoveGroceryItemCommand(name: item.name, context: context)),
      ),
    );
  }
}
