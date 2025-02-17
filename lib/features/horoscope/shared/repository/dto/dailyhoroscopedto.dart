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
