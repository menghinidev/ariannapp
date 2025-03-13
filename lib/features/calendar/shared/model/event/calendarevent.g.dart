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
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CalendarEventImplToJson(_$CalendarEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'datetime': instance.datetime.toIso8601String(),
      'isWholeDay': instance.isWholeDay,
      'description': instance.description,
    };
