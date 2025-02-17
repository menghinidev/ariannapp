import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';

abstract class IHoroscopeRepository {
  Future<ApplicationResponse<SimpleHoroscope>> dailyHoroscope({
    required HoroscopeSign sign,
    required DateTime date,
  });

  Future<ApplicationResponse<MonthlyHoroscope>> monthlyHoroscope({
    required HoroscopeSign sign,
  });

  Future<ApplicationResponse<SimpleHoroscope>> weeklyHoroscope({
    required HoroscopeSign sign,
  });
}
