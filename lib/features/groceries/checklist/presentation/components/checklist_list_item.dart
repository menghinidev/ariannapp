import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart' as model;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroceriesCheckListWidget extends ConsumerWidget {
  const GroceriesCheckListWidget({
    required this.item,
    required this.position,
    super.key,
  });

  final model.GroceriesCheckListItem item;
  final int position;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: context.colorScheme.secondaryContainer,
        child: Text('${position + 1}'),
      ),
      title: Text(item.name),
      subtitle: Text.rich(
        TextSpan(
          children: [
            const TextSpan(text: 'Aggiunto il: '),
            TextSpan(
              text: item.createdAt.toNiceDate,
              style: context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        style: context.textTheme.bodySmall,
      ),
    );
  }
}
