import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bloc.g.dart';

part 'bloc.freezed.dart';

@freezed
class NewShelfItemState with _$NewShelfItemState {
  factory NewShelfItemState({
    String? name,
    GroceryCategory? category,
  }) = _NewShelfItemState;
}

extension NewShelfItemStateFeatures on NewShelfItemState {
  bool get canBuild => name != null && name!.isNotEmpty && category != null;
}

@riverpod
class NewShelfItemBuilder extends _$NewShelfItemBuilder {
  @override
  NewShelfItemState build() {
    return NewShelfItemState();
  }

  void changeCategory(GroceryCategory category) => state = state.copyWith(category: category);
  void updateName(String? value) => state = state.copyWith(name: value);
}
