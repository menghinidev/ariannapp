import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/repository/invoker.dart';
import 'package:ariannapp/core/infrastructure/utils/local_storage/local_storage_service.dart';
import 'package:ariannapp/core/infrastructure/utils/response/empty_response.dart';
import 'package:ariannapp/features/horoscope/shared/horoscope/horoscope.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart' as dio;
import 'package:intl/intl.dart';

abstract class IHoroscopeRepository {
  Future<ApplicationResponse<SimpleDailyHoroscope>> dailyHoroscope({
    required HoroscopeSign sign,
  });
}

class HoroscopeRepository extends IHoroscopeRepository with RepositorySafeInvoker {
  HoroscopeRepository({
    required this.localStorageService,
    required this.httpClient,
  });

  final dio.Dio httpClient;
  final ILocalStorageService localStorageService;
  final instance = FirebaseFirestore.instance;

  static const String horoscopeCollection = 'daily-horoscope';

  late final wrapper = HoroscopeRequestWrapper(
    localStorageService: localStorageService,
    httpClient: httpClient,
  );

  @override
  Future<ApplicationResponse<SimpleDailyHoroscope>> dailyHoroscope({
    required HoroscopeSign sign,
  }) {
    final signName = sign.name;
    final datetime = DateTime.timestamp();
    final keyDate = DateFormat('yyyyMMdd').format(datetime);
    final documentKey = '$signName$keyDate';
    final queryParameters = {
      'sign': signName,
      'datetime': datetime.toIso8601String(),
    };
    return wrapper.firebaseProxy(
      request: (token) => httpClient.get<Map<String, dynamic>>(
        '${EnvVariable.horoscopeApi}/v2/horoscope/daily',
        queryParameters: queryParameters,
        options: dio.Options(headers: {'Authorization': 'Bearer $token'}),
      ),
      firebaseProxyRequest: () => safeInvoke(
        request: () => instance.collection(horoscopeCollection).doc(documentKey).get(),
        payloadMapper: (payload) => payload.data()!,
      ),
      firebaseProxyUpdate: (payload) => safeInvoke(
        request: () => instance.collection(horoscopeCollection).doc(documentKey).set(payload!.toJson()),
        payloadMapper: (_) {},
      ),
      firebasePayloadMapper: (payload) => SimpleDailyHoroscope.fromJson(payload.payload!),
      payloadMapper: (payload) {
        final data = payload.data!['data'] as Map<String, dynamic>;
        final content = data['daily_prediction'] as Map<String, dynamic>;
        return SimpleDailyHoroscope.fromJson(content);
      },
    );
  }
}

class HoroscopeRequestWrapper with RepositorySafeInvoker {
  HoroscopeRequestWrapper({
    required this.localStorageService,
    required this.httpClient,
  });

  static const baseHost = EnvVariable.horoscopeApi;
  static const clientId = EnvVariable.horoscopeApiClientId;
  static const secret = EnvVariable.horoscopeApiClientSecret;

  final ILocalStorageService localStorageService;
  final dio.Dio httpClient;

  Future<Response<T, ApplicationError>> firebaseProxy<T, P, F>({
    required Future<P> Function(String token) request,
    required T Function(P payload) payloadMapper,
    required Future<F> Function() firebaseProxyRequest,
    required T Function(F payload) firebasePayloadMapper,
    required Future<EmptyResponse> Function(T? payload) firebaseProxyUpdate,
  }) async {
    final firebaseCacheAttempt = await safeInvoke(request: firebaseProxyRequest, payloadMapper: firebasePayloadMapper);
    if (!firebaseCacheAttempt.isError) return firebaseCacheAttempt;
    final response = await authanticateRequest(request: request, payloadMapper: payloadMapper);
    if (!response.isError) await firebaseProxyUpdate(response.payload);
    return response;
  }

  Future<Response<T, ApplicationError>> authanticateRequest<T, P>({
    required Future<P> Function(String token) request,
    required T Function(P payload) payloadMapper,
  }) async {
    var token = await localStorageService.horoscopeToken;
    if (token == null) {
      token = await _fetchToken();
      await localStorageService.saveHoroscopeToken(token);
    }
    final response = await safeInvoke(
      request: () => request(token!),
      payloadMapper: payloadMapper,
      errorMapper: (error) {
        final statusCode = error.response?.statusCode;
        if (statusCode == 401) return ApplicationError.unauthorized();
        return null;
      },
    );
    if (!response.isError) return response;
    if (response.hasError(ApplicationError.unauthorized())) {
      token = await _fetchToken();
      await localStorageService.saveHoroscopeToken(token);
      return safeInvoke(
        request: () => request(token!),
        payloadMapper: payloadMapper,
      );
    } else {
      return response;
    }
  }

  Future<String> _fetchToken() async {
    final authResponse = await safeInvoke(
      request: () => httpClient.post<Map<String, dynamic>>(
        '$baseHost/token',
        data: {
          'grant_type': 'client_credentials',
          'client_id': clientId,
          'client_secret': secret,
        },
      ),
      payloadMapper: (payload) => payload.data!['access_token'] as String,
    );
    return authResponse.payload!;
  }
}
