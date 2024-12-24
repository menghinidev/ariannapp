import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_item.freezed.dart';

@freezed
class GroceriesCheckListItem with _$GroceriesCheckListItem {
  factory GroceriesCheckListItem({
    required String id,
    required String name,
    required GroceryCategory category,
  }) = _GroceriesCheckListItem;
}
