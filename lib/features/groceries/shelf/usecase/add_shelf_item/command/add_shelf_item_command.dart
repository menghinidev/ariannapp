import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_shelf_item_command.freezed.dart';

@freezed
class AddShelfItemCommand with _$AddShelfItemCommand {
  factory AddShelfItemCommand({
    required String name,
    required GroceryCategory category,
  }) = _AddShelfItemCommand;
}
