import 'package:freezed_annotation/freezed_annotation.dart';

part 'dailyhoroscopedto.freezed.dart';
part 'dailyhoroscopedto.g.dart';

@freezed
class ProkeralaDailyHoroscopeDto with _$ProkeralaDailyHoroscopeDto {
  @JsonSerializable(explicitToJson: true)
  factory ProkeralaDailyHoroscopeDto({
    @JsonKey(name: 'sign_id') required int signId,
    @JsonKey(name: 'sign_name') required String signName,
    required DateTime date,
    required String prediction,
  }) = _ProkeralaDailyHoroscopeDto;

  factory ProkeralaDailyHoroscopeDto.fromJson(Map<String, dynamic> json) => _$ProkeralaDailyHoroscopeDtoFromJson(json);
}

@freezed
class VercelDailyHoroscopeDto with _$VercelDailyHoroscopeDto {
  @JsonSerializable(explicitToJson: true)
  factory VercelDailyHoroscopeDto({
    @JsonKey(name: 'horoscope_data') required String prediction,
  }) = _VercelDailyHoroscopeDto;

  factory VercelDailyHoroscopeDto.fromJson(Map<String, dynamic> json) => _$VercelDailyHoroscopeDtoFromJson(json);
}

@freezed
class VercelWeeklyHoroscopeDto with _$VercelWeeklyHoroscopeDto {
  @JsonSerializable(explicitToJson: true)
  factory VercelWeeklyHoroscopeDto({
    @JsonKey(name: 'horoscope_data') required String prediction,
  }) = _VercelWeeklyHoroscopeDto;

  factory VercelWeeklyHoroscopeDto.fromJson(Map<String, dynamic> json) => _$VercelWeeklyHoroscopeDtoFromJson(json);
}

@freezed
class VercelMonthlyHoroscopeDto with _$VercelMonthlyHoroscopeDto {
  @JsonSerializable(explicitToJson: true)
  factory VercelMonthlyHoroscopeDto({
    @JsonKey(name: 'challenging_days') required String challengingDays,
    @JsonKey(name: 'standout_days') required String standoutDays,
    @JsonKey(name: 'horoscope_data') required String prediction,
  }) = _VercelMonthlyHoroscopeDto;

  factory VercelMonthlyHoroscopeDto.fromJson(Map<String, dynamic> json) => _$VercelMonthlyHoroscopeDtoFromJson(json);
}

extension VercelMonthlyHoroscopeDtoExtension on VercelMonthlyHoroscopeDto {
  List<int> get standoutDaysList => standoutDays.split(',').map((e) => int.parse(e.trim())).toList();
  List<int> get challengingDaysList => challengingDays.split(',').map((e) => int.parse(e.trim())).toList();
}
