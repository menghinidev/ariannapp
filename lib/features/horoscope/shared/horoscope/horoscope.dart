import 'package:freezed_annotation/freezed_annotation.dart';

part 'horoscope.freezed.dart';
part 'horoscope.g.dart';

@freezed
class SimpleDailyHoroscope with _$SimpleDailyHoroscope {
  @JsonSerializable(explicitToJson: true)
  factory SimpleDailyHoroscope({
    @JsonKey(name: 'sign_id') required int signId,
    @JsonKey(name: 'sign_name') required String signName,
    required DateTime date,
    required String prediction,
  }) = _SimpleDailyHoroscope;

  factory SimpleDailyHoroscope.fromJson(Map<String, dynamic> json) => _$SimpleDailyHoroscopeFromJson(json);
}

enum HoroscopeSign {
  aries,
  taurus,
  gemini,
  cancer,
  leo,
  virgo,
  libra,
  scorpio,
  sagittarius,
  capricorn,
  aquarius,
  pisces,
}
