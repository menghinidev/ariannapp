import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';

class MockGroceriesRepository extends IGroceriesRepository {
  late final shelf = List.generate(
    10,
    (index) => ShelfItem(
      id: IDGenerator.generateId,
      name: 'name $index',
      lastUpdate: DateTime.now(),
      category: GroceryCategory.edible,
    ),
  );

  late final groceries = List.generate(
    10,
    (index) => GroceriesCheckListItem(
      id: IDGenerator.generateId,
      name: 'name $index',
      category: GroceryCategory.edible,
    ),
  );

  @override
  Future<ApplicationResponse<List<ShelfItem>>> getShelf() async {
    return Responses.success(shelf);
  }

  @override
  Future<ApplicationResponse<List<GroceriesCheckListItem>>> getGroceriesList() async {
    return Responses.success(groceries);
  }

  @override
  Future<EmptyResponse> addGroceryItem({
    required String name,
    required GroceryCategory category,
  }) async {
    final newItem = GroceriesCheckListItem(
      id: IDGenerator.generateId,
      name: name,
      category: category,
    );
    groceries.add(newItem);
    return Responses.success<void, ApplicationError>(null);
  }
}
