import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/calendar/shared/model/event/calendarevent.dart';
import 'package:ariannapp/features/calendar/shared/repository/provider.dart';
import 'package:ariannapp/features/calendar/shared/repository/sources/calendar_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'new_event_use_case.g.dart';

@riverpod
CreateNewCalendarEventUseCase calendarUseCase(Ref ref) {
  final repo = ref.watch(calendarRepositoryProvider);
  return CreateNewCalendarEventUseCase(repo: repo);
}

class CreateNewCalendarEventUseCase extends UseCase<void, CalendarEventBuilder> {
  CreateNewCalendarEventUseCase({
    required this.repo,
    super.errorHandlers,
  });

  final ICalendarRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(CalendarEventBuilder input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((_) => repo.createEvent(event: input));
    await response.ifErrorAsync((payload) => applyErrorHandlers(response, input));
    return response;
  }
}
