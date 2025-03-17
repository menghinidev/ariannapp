import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/calendar/shared/model/event/calendarevent.dart';
import 'package:ariannapp/features/calendar/shared/repository/provider.dart';
import 'package:ariannapp/features/calendar/shared/repository/sources/calendar_repository.dart';
import 'package:ariannapp/navigation/key/router_key.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_calendar_use_case.g.dart';

@riverpod
FutureOr<List<CalendarEvent>> calendar(Ref ref) async {
  final repo = ref.watch(calendarRepositoryProvider);
  final context = ref.watch(navigatorKeyProvider).currentContext;
  final usecase = GetCalendarUseCase(
    repo: repo,
    errorHandlers: [if (context != null) ShowSnackbarErrorHandler(contextProvider: (_) => context)],
  );
  final response = await usecase.call(null);
  return response.toFuture();
}

class GetCalendarUseCase extends UseCase<List<CalendarEvent>, void> {
  GetCalendarUseCase({
    required this.repo,
    super.errorHandlers,
  });

  final ICalendarRepository repo;

  @override
  Future<Response<List<CalendarEvent>, ApplicationError>> call(void input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.events());
    await response.ifErrorAsync((payload) => applyErrorHandlers(response, input));
    return response;
  }
}
