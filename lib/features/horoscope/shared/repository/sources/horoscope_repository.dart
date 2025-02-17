import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';

abstract class IHoroscopeRepository {
  Future<ApplicationResponse<SimpleDailyHoroscope>> dailyHoroscope({
    required HoroscopeSign sign,
    required DateTime date,
  });
}
