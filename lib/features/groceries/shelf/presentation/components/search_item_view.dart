import 'dart:async';

import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';
import 'package:ariannapp/features/groceries/shelf/presentation/components/shelf_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShelfItemSearch extends ConsumerWidget {
  const ShelfItemSearch({
    required this.items,
    super.key,
  });

  final List<ShelfItem> items;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SearchAnchor(
      suggestionsBuilder: _suggestions,
      builder: (context, controller) => SearchBar(
        controller: controller,
        hintText: 'Cerca un elemento',
        onTap: () => controller.openView(),
        onChanged: (_) => controller.openView(),
        leading: const Icon(Icons.search),
      ),
    );
  }

  FutureOr<Iterable<Widget>> _suggestions(BuildContext context, SearchController controller) {
    final currentValue = controller.text;
    if (currentValue.isEmpty) return [];
    return [for (final i in items.where((e) => e.name.contains(currentValue))) ShelfListItem(item: i)];
  }
}
