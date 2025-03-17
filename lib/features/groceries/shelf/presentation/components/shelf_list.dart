import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/shelf/presentation/components/search_item_view.dart';
import 'package:ariannapp/features/groceries/shelf/presentation/components/shelf_list_item.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/delete_shelf_item/command/deleteshelfitemcommand.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/delete_shelf_item/delete_shelf_item_use_case.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/get_shelf/get_shelf_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SliverShelfList extends ConsumerWidget {
  const SliverShelfList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shelf = ref.watch(getShelfProvider);
    return BaseSliverLoader(
      value: shelf,
      margin: DistanceProvider.screenInsets.padding.removeBottom,
      builder: (context, data) => EmptyCaseBuilder.sliver(
        isEmpty: data.isEmpty,
        title: 'Nessun elemento',
        builder: (context) => SliverMainAxisGroup(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: DistanceProvider.screenInsets.padding.removeBottom,
                child: ShelfItemSearch(items: data),
              ),
            ),
            SliverPadding(
              padding: DistanceProvider.screenInsets.padding.removeBottom,
              sliver: SliverList.separated(
                itemCount: data.length,
                separatorBuilder: (context, index) => const Divider(height: DistanceProvider.mediumDistance),
                itemBuilder: (context, index) => CustomDismissible(
                  value: index,
                  background: const DismissibleDeleteDecoration(),
                  onDismissed: () async {
                    final usecase = ref.read(deleteShelfItemUseCaseProvider);
                    final command = DeleteShelfItemCommand(shelf: data[index], context: context);
                    await usecase.execute(command);
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
