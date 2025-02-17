// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trashcalendardate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrashCalendarDateDtoImpl _$$TrashCalendarDateDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TrashCalendarDateDtoImpl(
      codice: json['cdPrgt'] as String,
      dateInMilliseconds: (json['date'] as num).toInt(),
      description: json['desc'] as String,
      iconUrl: json['icon'] as String,
      rgb: json['rgb'] as String,
      note: json['note'] as String,
    );

Map<String, dynamic> _$$TrashCalendarDateDtoImplToJson(
        _$TrashCalendarDateDtoImpl instance) =>
    <String, dynamic>{
      'cdPrgt': instance.codice,
      'date': instance.dateInMilliseconds,
      'desc': instance.description,
      'icon': instance.iconUrl,
      'rgb': instance.rgb,
      'note': instance.note,
    };
