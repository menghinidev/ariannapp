// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horoscope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleDailyHoroscopeImpl _$$SimpleDailyHoroscopeImplFromJson(
        Map<String, dynamic> json) =>
    _$SimpleDailyHoroscopeImpl(
      signId: (json['sign_id'] as num).toInt(),
      signName: json['sign_name'] as String,
      date: DateTime.parse(json['date'] as String),
      prediction: json['prediction'] as String,
    );

Map<String, dynamic> _$$SimpleDailyHoroscopeImplToJson(
        _$SimpleDailyHoroscopeImpl instance) =>
    <String, dynamic>{
      'sign_id': instance.signId,
      'sign_name': instance.signName,
      'date': instance.date.toIso8601String(),
      'prediction': instance.prediction,
    };
