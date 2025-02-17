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
  Future<ApplicationResponse<SimpleDailyHoroscope>> dailyHoroscope({
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
    final mapped = SimpleDailyHoroscope(
      sign: sign,
      date: asDate,
      prediction: response.payload!.prediction,
    );
    return Responses.success(mapped);
  }
}
