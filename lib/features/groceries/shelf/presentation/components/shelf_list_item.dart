import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/move_to_grocery_list/command/movetogrocerylistcommand.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/move_to_grocery_list/move_grocery_item_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShelfListItem extends ConsumerWidget {
  const ShelfListItem({
    required this.item,
    super.key,
  });

  final ShelfItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(item.name),
      subtitle: Align(
        alignment: Alignment.centerLeft,
        child: RawChip(
          label: Text(item.category.label),
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.add_circle_outline),
        onPressed: () async {
          final command = MoveToGroceryListCommand(item: item, context: context);
          final useCase = await ref.read(moveGroceryItemUseCaseProvider.future);
          await useCase.call(command);
        },
      ),
    );
  }
}
