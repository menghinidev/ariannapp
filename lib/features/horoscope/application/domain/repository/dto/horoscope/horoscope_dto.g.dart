// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horoscope_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MontlyHoroscopeDTOImpl _$$MontlyHoroscopeDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$MontlyHoroscopeDTOImpl(
      data: json['horoscope_data'] as String,
      challengingDays: json['challenging_days'] as String,
      standoutDays: json['standout_days'] as String,
      month: const _MonthDateConverter().fromJson(json['month'] as String),
    );

Map<String, dynamic> _$$MontlyHoroscopeDTOImplToJson(
        _$MontlyHoroscopeDTOImpl instance) =>
    <String, dynamic>{
      'horoscope_data': instance.data,
      'challenging_days': instance.challengingDays,
      'standout_days': instance.standoutDays,
      'month': const _MonthDateConverter().toJson(instance.month),
    };

_$DailyHoroscopeDTOImpl _$$DailyHoroscopeDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyHoroscopeDTOImpl(
      data: json['horoscope_data'] as String,
      date: const _DailyDateConverter().fromJson(json['date'] as String),
    );

Map<String, dynamic> _$$DailyHoroscopeDTOImplToJson(
        _$DailyHoroscopeDTOImpl instance) =>
    <String, dynamic>{
      'horoscope_data': instance.data,
      'date': const _DailyDateConverter().toJson(instance.date),
    };
