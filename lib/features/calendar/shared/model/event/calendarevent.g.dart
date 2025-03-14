// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendarevent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarEventImpl _$$CalendarEventImplFromJson(Map<String, dynamic> json) =>
    _$CalendarEventImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      datetime: DateTime.parse(json['datetime'] as String),
      isWholeDay: json['isWholeDay'] as bool,
      category: $enumDecodeNullable(_$EventCategoryEnumMap, json['category']) ??
          EventCategory.generic,
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$EventTagEnumMap, e))
              .toList() ??
          const <EventTag>[],
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CalendarEventImplToJson(_$CalendarEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'datetime': instance.datetime.toIso8601String(),
      'isWholeDay': instance.isWholeDay,
      'category': _$EventCategoryEnumMap[instance.category]!,
      'tags': instance.tags.map((e) => _$EventTagEnumMap[e]!).toList(),
      'description': instance.description,
    };

const _$EventCategoryEnumMap = {
  EventCategory.appointment: 'appointment',
  EventCategory.expiration: 'expiration',
  EventCategory.generic: 'generic',
};

const _$EventTagEnumMap = {
  EventTag.car: 'car',
  EventTag.house: 'house',
  EventTag.work: 'work',
  EventTag.personal: 'personal',
};
