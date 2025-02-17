import 'package:freezed_annotation/freezed_annotation.dart';

part 'horoscope.freezed.dart';

@freezed
class SimpleDailyHoroscope with _$SimpleDailyHoroscope {
  factory SimpleDailyHoroscope({
    required HoroscopeSign sign,
    required DateTime date,
    required String prediction,
  }) = _SimpleDailyHoroscope;
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
