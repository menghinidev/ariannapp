import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_grocery_item_command.freezed.dart';

@freezed
class AddGroceryItemCommand with _$AddGroceryItemCommand {
  factory AddGroceryItemCommand({
    required String name,
    required GroceryCategory category,
  }) = _AddGroceryItemCommand;
}
