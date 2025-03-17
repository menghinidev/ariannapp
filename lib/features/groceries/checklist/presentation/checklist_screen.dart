import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/checklist/presentation/sections/catetories_filter_section.dart';
import 'package:ariannapp/features/groceries/checklist/presentation/sections/checklist_listview_section.dart';
import 'package:ariannapp/features/groceries/shared/routes/shelf_routes.dart';
import 'package:ariannapp/navigation/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroceriesCheckListScreen extends ConsumerWidget {
  const GroceriesCheckListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseAppScreen.sliver(
      title: 'Lista della spesa',
      actions: [
        IconButton.filled(
          onPressed: () => context.goRelative(GroceriesRoutes.shelf),
          icon: const Icon(Icons.local_grocery_store),
        ),
      ],
      children: [
        SliverPadding(
          padding: DistanceProvider.screenInsets.padding.removeBottom,
          sliver: const SliverToBoxAdapter(child: CategoriesFilterSection()),
        ),
        const CheckListListViewSection(),
      ],
    );
  }
}
