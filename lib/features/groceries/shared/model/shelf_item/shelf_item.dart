import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shelf_item.freezed.dart';
part 'shelf_item.g.dart';

@freezed
class ShelfItem with _$ShelfItem {
  factory ShelfItem({
    required String id,
    required String name,
    required DateTime lastUpdate,
    required GroceryCategory category,
  }) = _ShelfItem;

  factory ShelfItem.fromJson(Map<String, dynamic> json) => _$ShelfItemFromJson(json);

  factory ShelfItem.fromFirestore(QueryDocumentSnapshot snapshot) {
    final id = snapshot.id;
    final json = snapshot.data()! as Map<String, dynamic>;
    json['id'] = id;
    return ShelfItem.fromJson(json);
  }
}

extension ShelfFeatures on ShelfItem {
  Map<String, dynamic> toFirestore() {
    final json = toJson()..remove('id');
    return json;
  }
}
