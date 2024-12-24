import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/utils/extensions/riverpod_extensions.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/groceries/shelf/presentation/components/search_item_view.dart';
import 'package:ariannapp/features/groceries/shelf/presentation/components/shelf_list_item.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/get_shelf/get_shelf_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShelfListView extends ConsumerWidget {
  const ShelfListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shelf = ref.watch(getShelfProvider);
    return shelf.loadUntil(
      onLoaded: (data) => EmptyCaseBuilder(
        isEmpty: data.isEmpty,
        title: 'Nessuna elemento',
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: DistanceProvider.screenInsets.padding.removeBottom,
              child: ShelfItemSearch(items: data),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                padding: DistanceProvider.screenInsets.padding.removeBottom,
                itemBuilder: (context, index) => ShelfListItem(item: data[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
