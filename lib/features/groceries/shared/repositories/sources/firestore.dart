import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/repository/invoker.dart';
import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';
import 'package:ariannapp/features/groceries/shared/model/check_item/checklist_item.dart';
import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:ariannapp/features/groceries/shared/model/shelf_item/shelf_item.dart';
import 'package:ariannapp/features/groceries/shared/repositories/sources/i_groceries_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreGroceriesRepository extends IGroceriesRepository with RepositorySafeInvoker {
  final instance = FirebaseFirestore.instance;

  static const String shelfCollection = 'shelf';
  static const String groceriesCollection = 'groceries';

  @override
  Future<EmptyResponse> addGroceryItem({
    required String name,
    required GroceryCategory category,
  }) {
    final item = GroceriesCheckListItem(
      id: IDGenerator.generateId,
      name: name,
      category: category,
      createdAt: DateTime.now(),
    );
    return safeInvoke(
      request: () => instance.collection(groceriesCollection).doc(item.id).set(item.toFirestore()),
      payloadMapper: (_) {},
    );
  }

  @override
  Future<EmptyResponse> addShelfItem({
    required String name,
    required GroceryCategory category,
  }) {
    final item = ShelfItem(
      id: IDGenerator.generateId,
      name: name,
      category: category,
      lastUpdate: DateTime.now(),
    );
    return safeInvoke(
      request: () => instance.collection(shelfCollection).doc(item.id).set(item.toFirestore()),
      payloadMapper: (_) {},
    );
  }

  @override
  Future<ApplicationResponse<List<GroceriesCheckListItem>>> getGroceriesList() {
    return safeInvoke<List<GroceriesCheckListItem>, QuerySnapshot<Map<String, dynamic>>>(
      request: () => instance.collection(groceriesCollection).get(),
      payloadMapper: (response) => response.docs.map(GroceriesCheckListItem.fromFirestore).toList(),
    );
  }

  @override
  Future<ApplicationResponse<List<ShelfItem>>> getShelf() {
    return safeInvoke<List<ShelfItem>, QuerySnapshot<Map<String, dynamic>>>(
      request: () => instance.collection(shelfCollection).get(),
      payloadMapper: (response) => response.docs.map(ShelfItem.fromFirestore).toList(),
    );
  }

  @override
  Future<EmptyResponse> removeGroceryItem({required GroceriesCheckListItem item}) {
    return safeInvoke(
      request: () => instance.collection(groceriesCollection).doc(item.id).delete(),
      payloadMapper: (_) {},
    );
  }
}
