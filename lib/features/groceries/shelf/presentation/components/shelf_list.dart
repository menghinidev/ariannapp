import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/shelf/presentation/components/search_item_view.dart';
import 'package:ariannapp/features/groceries/shelf/presentation/components/shelf_list_item.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/delete_shelf_item/command/deleteshelfitemcommand.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/delete_shelf_item/delete_shelf_item_use_case.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/get_shelf/get_shelf_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShelfListView extends ConsumerWidget {
  const ShelfListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shelf = ref.watch(getShelfProvider.select((e) => e.valueOrNull));
    return LoadingSwitcher(
      value: shelf,
      margin: DistanceProvider.screenInsets.padding.removeBottom,
      builder: (context, data) => EmptyCaseBuilder(
        isEmpty: data.isEmpty,
        title: 'Nessun elemento',
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: DistanceProvider.screenInsets.padding.removeBottom,
              child: ShelfItemSearch(items: data),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: data.length,
                physics: const ScrollPhysics(),
                separatorBuilder: (context, index) => const Divider(height: DistanceProvider.mediumDistance),
                padding: DistanceProvider.screenInsets.padding.removeBottom,
                itemBuilder: (context, index) => CustomDismissible(
                  value: index,
                  background: const DismissibleDeleteDecoration(),
                  onDismissed: () async {
                    final usecase = ref.read(deleteShelfItemUseCaseProvider);
                    final command = DeleteShelfItemCommand(shelf: data[index], context: context);
                    await usecase.call(command);
                  },
                  child: ShelfListItem(
                    position: index,
                    item: data[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
