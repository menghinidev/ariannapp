import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/repository/invoker.dart';
import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';
import 'package:ariannapp/features/horoscope/shared/repository/dto/dailyhoroscopedto.dart';
import 'package:ariannapp/features/horoscope/shared/repository/sources/horoscope_repository.dart';
import 'package:dio/dio.dart' as dio;
import 'package:intl/intl.dart';

class VercelHoroscopeRepository with RepositorySafeInvoker implements IHoroscopeRepository {
  VercelHoroscopeRepository({required this.httpClient});

  final dio.Dio httpClient;
  static const host = 'https://horoscope-app-api.vercel.app/api/v1';

  @override
  Future<ApplicationResponse<SimpleHoroscope>> dailyHoroscope({
    required HoroscopeSign sign,
    required DateTime date,
  }) async {
    final today = DateFormat('yyyy-MM-dd').format(date.toUtc());
    final asDate = DateTime.parse(today);
    final parameters = {
      'sign': sign.name,
      'day': today,
    };
    final response = await safeInvoke(
      request: () => httpClient.get<Map<String, dynamic>>(
        '$host/get-horoscope/daily',
        queryParameters: parameters,
      ),
      payloadMapper: (value) => VercelDailyHoroscopeDto.fromJson(value.data!['data'] as Map<String, dynamic>),
      errorMapper: (exception) {
        final payload = exception.response?.data as Map<String, dynamic>?;
        return ApplicationError.generic(message: payload?['message'] as String?);
      },
    );
    if (response.isError) return Responses.failure(response.errors);
    final mapped = SimpleHoroscope(
      sign: sign,
      date: asDate,
      prediction: response.payload!.prediction,
    );
    return Responses.success(mapped);
  }

  @override
  Future<ApplicationResponse<MonthlyHoroscope>> monthlyHoroscope({
    required HoroscopeSign sign,
  }) async {
    final month = DateTime.now().toUtc().copyWith(day: 1);
    final parameters = {'sign': sign.name};
    final response = await safeInvoke(
      request: () => httpClient.get<Map<String, dynamic>>(
        '$host/get-horoscope/monthly',
        queryParameters: parameters,
      ),
      payloadMapper: (value) => VercelMonthlyHoroscopeDto.fromJson(value.data!['data'] as Map<String, dynamic>),
      errorMapper: (exception) {
        final payload = exception.response?.data as Map<String, dynamic>?;
        return ApplicationError.generic(message: payload?['message'] as String?);
      },
    );
    if (response.isError) return Responses.failure(response.errors);
    final mapped = MonthlyHoroscope(
      data: SimpleHoroscope(
        sign: sign,
        date: month,
        prediction: response.payload!.prediction,
      ),
      standoutDays: response.payload!.standoutDaysList.map((e) => month.copyWith(day: e)).toList(),
      challengingDays: response.payload!.challengingDaysList.map((e) => month.copyWith(day: e)).toList(),
    );

    return Responses.success(mapped);
  }
}
