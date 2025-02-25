import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';

abstract class IGroceriesRepository {
  Future<ApplicationResponse<List<ShelfItem>>> getShelf();
  Future<ApplicationResponse<List<GroceriesCheckListItem>>> getGroceriesList();
  Future<EmptyResponse> addShelfItem({
    required String name,
    required GroceryCategory category,
  });
  Future<EmptyResponse> addGroceryItem({
    required String name,
    required GroceryCategory category,
    required int index,
  });
  Future<EmptyResponse> removeGroceryItem({
    required GroceriesCheckListItem item,
  });
  Future<EmptyResponse> reorder({
    required List<GroceriesCheckListItem> items,
  });
}
