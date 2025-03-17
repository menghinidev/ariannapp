import 'package:ariannapp/core/ui/theme/theme_builder.dart';
import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/move_to_grocery_list/command/movetogrocerylistcommand.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/move_to_grocery_list/move_grocery_item_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShelfListItem extends ConsumerWidget {
  const ShelfListItem({
    required this.item,
    required this.position,
    super.key,
  });

  final ShelfItem item;
  final int position;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: context.colorScheme.secondaryContainer,
        child: Text('${position + 1}'),
      ),
      title: Text(item.name),
      subtitle: Text(item.category.label),
      trailing: TextButton(
        onPressed: () async {
          final command = MoveToGroceryListCommand(item: item, context: context);
          final useCase = await ref.read(moveGroceryItemUseCaseProvider.future);
          await useCase.execute(command);
        },
        child: const Text('Aggiungi'),
      ),
    );
  }
}
