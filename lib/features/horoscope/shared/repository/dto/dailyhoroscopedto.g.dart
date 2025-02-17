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

_$VercelWeeklyHoroscopeDtoImpl _$$VercelWeeklyHoroscopeDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$VercelWeeklyHoroscopeDtoImpl(
      prediction: json['horoscope_data'] as String,
    );

Map<String, dynamic> _$$VercelWeeklyHoroscopeDtoImplToJson(
        _$VercelWeeklyHoroscopeDtoImpl instance) =>
    <String, dynamic>{
      'horoscope_data': instance.prediction,
    };

_$VercelMonthlyHoroscopeDtoImpl _$$VercelMonthlyHoroscopeDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$VercelMonthlyHoroscopeDtoImpl(
      challengingDays: json['challenging_days'] as String,
      standoutDays: json['standout_days'] as String,
      prediction: json['horoscope_data'] as String,
    );

Map<String, dynamic> _$$VercelMonthlyHoroscopeDtoImplToJson(
        _$VercelMonthlyHoroscopeDtoImpl instance) =>
    <String, dynamic>{
      'challenging_days': instance.challengingDays,
      'standout_days': instance.standoutDays,
      'horoscope_data': instance.prediction,
    };
