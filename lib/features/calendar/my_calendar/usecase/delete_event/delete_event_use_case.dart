import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/calendar/my_calendar/usecase/delete_event/command/deleteeventcommand.dart';
import 'package:ariannapp/features/calendar/my_calendar/usecase/get_calendar/get_calendar_use_case.dart';
import 'package:ariannapp/features/calendar/shared/repository/provider.dart';
import 'package:ariannapp/features/calendar/shared/repository/sources/calendar_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_event_use_case.g.dart';

@riverpod
DeleteCalendarEventUseCase deleteEventUseCase(Ref ref) {
  final repo = ref.watch(calendarRepositoryProvider);
  final showSuccessSnackbar = ShowSnackbarSuccessHandler<void, DeleteEventCommand>(
    message: 'Evento eliminato',
    contextProvider: (input) => input.context,
  );
  final refresh = InvalidateProviderOnSuccessHandler<void, DeleteEventCommand>(ref: ref, provider: calendarProvider);
  final showErrorSnackbar = ShowSnackbarErrorHandler<void, DeleteEventCommand>(
    messageProvider: (_, __) => 'Qualcosa è andato storto',
    contextProvider: (input) => input.context,
  );
  return DeleteCalendarEventUseCase(
    repo: repo,
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (input) => input.context)],
    errorHandlers: [showErrorSnackbar],
    successHandlers: [refresh, showSuccessSnackbar],
  );
}

class DeleteCalendarEventUseCase extends UseCase<void, DeleteEventCommand> {
  DeleteCalendarEventUseCase({
    required this.repo,
    super.errorHandlers,
    super.successHandlers,
    super.interceptors,
  });

  final ICalendarRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(DeleteEventCommand input) => repo.deleteEvent(
        id: input.eventId,
      );
}
