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
      leading: IconButton(
        icon: const Icon(Icons.check_circle_outline_outlined),
        onPressed: () {},
      ),
    );
  }
}
