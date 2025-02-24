import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/repository/invoker.dart';
import 'package:ariannapp/features/trash_calendar/shared/model/trashcalendardate.dart';
import 'package:dio/dio.dart' as dio;

abstract class ITrashCalendarRepository {
  Future<ApplicationResponse<List<TrashCalendarDate>>> getTrashCalendar();
}

class ApricaTrashCalendarRepository with RepositorySafeInvoker implements ITrashCalendarRepository {
  ApricaTrashCalendarRepository({required this.httpClient});

  final dio.Dio httpClient;

  @override
  Future<ApplicationResponse<List<TrashCalendarDate>>> getTrashCalendar() {
    const path = 'https://www.apricaspa.it/api/service/area-services/calendar-items';
    return safeInvoke(
      request: () => httpClient.post<Map<String, dynamic>>(path, data: {'geociv': 853576}),
      errorMapper: (exception) => ApplicationError.generic(message: exception.message),
      payloadMapper: (payload) => (payload.data?['data'] as List<dynamic>)
          .map((e) => TrashCalendarDateDto.fromJson(e as Map<String, dynamic>).toDomain())
          .toList(),
    );
  }
}
