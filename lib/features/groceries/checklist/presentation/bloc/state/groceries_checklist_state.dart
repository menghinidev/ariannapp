import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'groceries_checklist_state.freezed.dart';

@freezed
class GroceriesCheckListState with _$GroceriesCheckListState {
  factory GroceriesCheckListState({
    @Default(<GroceryCategory>[]) List<GroceryCategory> categories,
    bool? ascending,
    DateTime? from,
  }) = _GroceriesCheckListState;
}
