import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreGroceriesRepository extends IGroceriesRepository {
  final instance = FirebaseFirestore.instance;

  static const String shelfCollection = 'shelf';
  static const String groceriesCollection = 'groceries';

  @override
  Future<EmptyResponse> addGroceryItem({
    required String name,
    required GroceryCategory category,
  }) async {
    try {
      final item = GroceriesCheckListItem(
        id: IDGenerator.generateId,
        name: name,
        category: category,
        createdAt: DateTime.now(),
      );
      await instance.collection(groceriesCollection).add(item.toFirestore());
      return Responses.success(null);
    } catch (e) {
      return Responses.failure([ApplicationError.generic()]);
    }
  }

  @override
  Future<EmptyResponse> addShelfItem({
    required String name,
    required GroceryCategory category,
  }) async {
    try {
      final item = ShelfItem(
        id: IDGenerator.generateId,
        name: name,
        category: category,
        lastUpdate: DateTime.now(),
      );
      await instance.collection(shelfCollection).add(item.toFirestore());
      return Responses.success(null);
    } catch (e) {
      return Responses.failure([ApplicationError.generic()]);
    }
  }

  @override
  Future<ApplicationResponse<List<GroceriesCheckListItem>>> getGroceriesList() async {
    try {
      final snapshot = await instance.collection(groceriesCollection).get();
      final groceries = snapshot.docs.map(GroceriesCheckListItem.fromFirestore).toList();
      return Responses.success(groceries);
    } catch (e) {
      return Responses.failure([ApplicationError.generic()]);
    }
  }

  @override
  Future<ApplicationResponse<List<ShelfItem>>> getShelf() async {
    try {
      final snapshot = await instance.collection(shelfCollection).get();
      final shelf = snapshot.docs.map(ShelfItem.fromFirestore).toList();
      return Responses.success(shelf);
    } catch (e) {
      return Responses.failure([ApplicationError.generic()]);
    }
  }

  @override
  Future<EmptyResponse> removeGroceryItem({required GroceriesCheckListItem item}) async {
    try {
      await instance.collection(groceriesCollection).doc(item.id).delete();
      return Responses.success(null);
    } catch (e) {
      return Responses.failure([ApplicationError.generic()]);
    }
  }
}
