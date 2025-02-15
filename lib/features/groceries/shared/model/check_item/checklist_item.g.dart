// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroceriesCheckListItemImpl _$$GroceriesCheckListItemImplFromJson(
        Map<String, dynamic> json) =>
    _$GroceriesCheckListItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      index: (json['index'] as num).toInt(),
      category: $enumDecode(_$GroceryCategoryEnumMap, json['category']),
    );

Map<String, dynamic> _$$GroceriesCheckListItemImplToJson(
        _$GroceriesCheckListItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
      'index': instance.index,
      'category': _$GroceryCategoryEnumMap[instance.category]!,
    };

const _$GroceryCategoryEnumMap = {
  GroceryCategory.edible: 'edible',
  GroceryCategory.animal: 'animal',
  GroceryCategory.house: 'house',
  GroceryCategory.bathroom: 'bathroom',
  GroceryCategory.other: 'other',
};
