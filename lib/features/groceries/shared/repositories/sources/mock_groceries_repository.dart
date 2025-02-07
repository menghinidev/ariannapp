import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';

class MockGroceriesRepository extends IGroceriesRepository {
  late final shelf = [
    ShelfItem(
      id: IDGenerator.generateId,
      name: 'Latte',
      category: GroceryCategory.edible,
      lastUpdate: DateTime.now(),
    ),
    ShelfItem(
      id: IDGenerator.generateId,
      name: 'Pane',
      category: GroceryCategory.edible,
      lastUpdate: DateTime.now(),
    ),
    ShelfItem(
      id: IDGenerator.generateId,
      name: 'Pasta',
      category: GroceryCategory.edible,
      lastUpdate: DateTime.now(),
    ),
    ShelfItem(
      id: IDGenerator.generateId,
      name: 'Croccantini',
      category: GroceryCategory.animal,
      lastUpdate: DateTime.now(),
    ),
    ShelfItem(
      id: IDGenerator.generateId,
      name: 'Acqua',
      category: GroceryCategory.edible,
      lastUpdate: DateTime.now(),
    ),
    ShelfItem(
      id: IDGenerator.generateId,
      name: 'Fermenti lattici',
      category: GroceryCategory.house,
      lastUpdate: DateTime.now(),
    ),
    ShelfItem(
      id: IDGenerator.generateId,
      name: 'Sapone',
      category: GroceryCategory.bathroom,
      lastUpdate: DateTime.now(),
    ),
    ShelfItem(
      id: IDGenerator.generateId,
      name: 'Shampoo',
      category: GroceryCategory.bathroom,
      lastUpdate: DateTime.now(),
    ),
  ];

  late final groceries = <GroceriesCheckListItem>[];

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
      createdAt: DateTime.now(),
    );
    groceries.add(newItem);
    return Responses.success<void, ApplicationError>(null);
  }

  @override
  Future<EmptyResponse> removeGroceryItem({required String name}) async {
    groceries.removeWhere((element) => element.name == name);
    return Responses.success<void, ApplicationError>(null);
  }

  @override
  Future<EmptyResponse> addShelfItem({required String name, required GroceryCategory category}) async {
    final newItem = ShelfItem(
      id: IDGenerator.generateId,
      name: name,
      category: category,
      lastUpdate: DateTime.now(),
    );
    shelf.add(newItem);
    return Responses.success<void, ApplicationError>(null);
  }
}
