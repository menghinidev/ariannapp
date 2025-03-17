// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countabledata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountableDataImpl _$$CountableDataImplFromJson(Map<String, dynamic> json) =>
    _$CountableDataImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      counter: (json['counter'] as num).toInt(),
      email: json['email'] as String,
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => CountableEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CountableEvent>[],
    );

Map<String, dynamic> _$$CountableDataImplToJson(_$CountableDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'counter': instance.counter,
      'email': instance.email,
      'events': instance.events.map((e) => e.toJson()).toList(),
    };

_$CountableEventImpl _$$CountableEventImplFromJson(Map<String, dynamic> json) =>
    _$CountableEventImpl(
      timestamp: DateTime.parse(json['timestamp'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CountableEventImplToJson(
        _$CountableEventImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'description': instance.description,
    };

_$CountableDataBuilderImpl _$$CountableDataBuilderImplFromJson(
        Map<String, dynamic> json) =>
    _$CountableDataBuilderImpl(
      email: json['email'] as String,
      name: json['name'] as String?,
      counter: (json['counter'] as num?)?.toInt() ?? 0,
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => CountableEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CountableEvent>[],
    );

Map<String, dynamic> _$$CountableDataBuilderImplToJson(
        _$CountableDataBuilderImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'counter': instance.counter,
      'events': instance.events,
    };
