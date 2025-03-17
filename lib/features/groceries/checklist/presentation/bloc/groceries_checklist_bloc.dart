import 'package:ariannapp/features/groceries/checklist/presentation/bloc/state/groceries_checklist_state.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/get_checklist/get_checklist_use_case.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/remove_grocery_item/command/removegroceryitemcommand.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/remove_grocery_item/remove_grocery_item_use_case.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/update_order/command/updategrocerieslistordercommand.dart';
import 'package:ariannapp/features/groceries/checklist/usecase/update_order/update_checklist_order_use_case.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'groceries_checklist_bloc.g.dart';

@riverpod
class GroceriesCheckListFilters extends _$GroceriesCheckListFilters {
  @override
  GroceriesCheckListState build() => GroceriesCheckListState();

  void toggleSorting() => state = state.copyWith(ascending: !(state.ascending ?? false));

  void toggleCategory(GroceryCategory category) {
    final isSelected = state.categories.contains(category);
    final filters = [...state.categories];
    if (isSelected) {
      filters.remove(category);
    } else {
      filters.add(category);
    }
    state = state.copyWith(categories: filters);
  }

  void clearFilters() => state = GroceriesCheckListState();
}

@riverpod
class GroceriesCheckListOrderManager extends _$GroceriesCheckListOrderManager {
  @override
  FutureOr<List<GroceriesCheckListItem>> build() async {
    final filters = ref.watch(groceriesCheckListFiltersProvider);
    final categories = filters.categories;
    final groceries = await ref.watch(groceriesChecklistProvider.future);
    if (categories.isEmpty) return groceries;
    return groceries.where((e) => categories.contains(e.category)).toList();
  }

  Future<void> reorder(BuildContext context, int oldIndex, int newIndex) async {
    final loadedState = state.valueOrNull;
    if (loadedState == null) return;
    final target = loadedState[oldIndex];
    final newValues = [...loadedState]
      ..removeAt(oldIndex)
      ..insert(newIndex, target);
    state = AsyncData(newValues);
    final command = UpdateGroceriesListOrderCommand(items: newValues, context: context);
    await ref.read(updateCheckListOrderUseCaseProvider).execute(command);
  }

  Future<void> remove(BuildContext context, {required GroceriesCheckListItem item}) async {
    final loadedState = state.valueOrNull;
    if (loadedState == null) return;
    final newValues = [...loadedState]..remove(item);
    state = AsyncData(newValues);
    final command = RemoveGroceryItemCommand(item: item, context: context);
    await ref.read(removeGroceryItemUseCaseProvider).execute(command);
  }
}
