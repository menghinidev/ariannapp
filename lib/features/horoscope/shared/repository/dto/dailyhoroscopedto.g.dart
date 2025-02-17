// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dailyhoroscopedto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProkeralaDailyHoroscopeDtoImpl _$$ProkeralaDailyHoroscopeDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProkeralaDailyHoroscopeDtoImpl(
      signId: (json['sign_id'] as num).toInt(),
      signName: json['sign_name'] as String,
      date: DateTime.parse(json['date'] as String),
      prediction: json['prediction'] as String,
    );

Map<String, dynamic> _$$ProkeralaDailyHoroscopeDtoImplToJson(
        _$ProkeralaDailyHoroscopeDtoImpl instance) =>
    <String, dynamic>{
      'sign_id': instance.signId,
      'sign_name': instance.signName,
      'date': instance.date.toIso8601String(),
      'prediction': instance.prediction,
    };

_$VercelDailyHoroscopeDtoImpl _$$VercelDailyHoroscopeDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$VercelDailyHoroscopeDtoImpl(
      prediction: json['horoscope_data'] as String,
    );

Map<String, dynamic> _$$VercelDailyHoroscopeDtoImplToJson(
        _$VercelDailyHoroscopeDtoImpl instance) =>
    <String, dynamic>{
      'horoscope_data': instance.prediction,
    };
