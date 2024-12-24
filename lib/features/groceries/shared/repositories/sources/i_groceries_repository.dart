import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';

abstract class IGroceriesRepository {
  Future<ApplicationResponse<List<ShelfItem>>> getShelf();
  Future<ApplicationResponse<List<GroceriesCheckListItem>>> getGroceriesList();
  Future<EmptyResponse> addGroceryItem({
    required String name,
    required GroceryCategory category,
  });
}
