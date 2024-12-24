import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shelf_item.freezed.dart';

@freezed
class ShelfItem with _$ShelfItem {
  factory ShelfItem({
    required String id,
    required String name,
    required DateTime lastUpdate,
    required GroceryCategory category,
  }) = _ShelfItem;
}
