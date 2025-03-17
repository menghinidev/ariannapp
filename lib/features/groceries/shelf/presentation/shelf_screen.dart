import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/shelf/presentation/components/new_shelf_item/add_shelf_item_bottom_sheet.dart';
import 'package:ariannapp/features/groceries/shelf/presentation/components/shelf_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShelfScreen extends ConsumerWidget {
  const ShelfScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseAppScreen.sliver(
      title: 'Dispensa',
      actions: [
        IconButton.filled(
          icon: const Icon(Icons.add),
          onPressed: () => ref.read(bottomSheetServiceProvider).showBottomSheet<void>(
                context,
                builder: (context) => const NewShelfItemBottomSheet(),
              ),
        ),
      ],
      children: const [
        SliverShelfList(),
        /* SliverFillRemaining(
          child: ShelfListView(),
        ), */
      ],
    );
  }
}
