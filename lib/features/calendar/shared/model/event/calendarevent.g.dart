// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendarevent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarEventImpl _$$CalendarEventImplFromJson(Map<String, dynamic> json) =>
    _$CalendarEventImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      isWholeDay: json['isWholeDay'] as bool,
    );

Map<String, dynamic> _$$CalendarEventImplToJson(_$CalendarEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'isWholeDay': instance.isWholeDay,
    };

_$CalendarEventBuilderImpl _$$CalendarEventBuilderImplFromJson(
        Map<String, dynamic> json) =>
    _$CalendarEventBuilderImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      isWholeDay: json['isWholeDay'] as bool,
    );

Map<String, dynamic> _$$CalendarEventBuilderImplToJson(
        _$CalendarEventBuilderImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'isWholeDay': instance.isWholeDay,
    };
