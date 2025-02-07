import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_item.freezed.dart';
part 'checklist_item.g.dart';

@freezed
class GroceriesCheckListItem with _$GroceriesCheckListItem {
  factory GroceriesCheckListItem({
    required String id,
    required String name,
    required DateTime createdAt,
    required GroceryCategory category,
  }) = _GroceriesCheckListItem;

  factory GroceriesCheckListItem.fromJson(Map<String, dynamic> json) => _$GroceriesCheckListItemFromJson(json);

  factory GroceriesCheckListItem.fromFirestore(QueryDocumentSnapshot snapshot) {
    final id = snapshot.id;
    final json = snapshot.data()! as Map<String, dynamic>;
    json['id'] = id;
    return GroceriesCheckListItem.fromJson(json);
  }
}

extension ShelfFeatures on GroceriesCheckListItem {
  Map<String, dynamic> toFirestore() {
    final json = toJson()..remove('id');
    return json;
  }
}
