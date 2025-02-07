// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shelf_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShelfItemImpl _$$ShelfItemImplFromJson(Map<String, dynamic> json) =>
    _$ShelfItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      lastUpdate: DateTime.parse(json['lastUpdate'] as String),
      category: $enumDecode(_$GroceryCategoryEnumMap, json['category']),
    );

Map<String, dynamic> _$$ShelfItemImplToJson(_$ShelfItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastUpdate': instance.lastUpdate.toIso8601String(),
      'category': _$GroceryCategoryEnumMap[instance.category]!,
    };

const _$GroceryCategoryEnumMap = {
  GroceryCategory.edible: 'edible',
  GroceryCategory.animal: 'animal',
  GroceryCategory.house: 'house',
  GroceryCategory.bathroom: 'bathroom',
  GroceryCategory.other: 'other',
};
