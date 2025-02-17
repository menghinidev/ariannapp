import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
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
    return BaseAppScreen(
      title: 'Lista della spesa',
      actions: [
        IconButton.filled(
          onPressed: () => context.goRelative(GroceriesRoutes.shelf),
          icon: const Icon(Icons.local_grocery_store),
        ),
      ],
      child: const _GroceriesCheckListView(),
    );
  }
}

class _GroceriesCheckListView extends StatelessWidget {
  const _GroceriesCheckListView();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: DistanceProvider.screenInsets.padding.removeBottom,
          child: const CategoriesFilterSection(),
        ),
        const Expanded(child: CheckListListViewSection()),
      ],
    );
  }
}
