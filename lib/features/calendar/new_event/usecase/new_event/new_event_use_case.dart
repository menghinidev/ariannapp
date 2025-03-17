import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/calendar/my_calendar/usecase/get_calendar/get_calendar_use_case.dart';
import 'package:ariannapp/features/calendar/new_event/usecase/new_event/command/neweventcommand.dart';
import 'package:ariannapp/features/calendar/shared/repository/provider.dart';
import 'package:ariannapp/features/calendar/shared/repository/sources/calendar_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'new_event_use_case.g.dart';

@riverpod
CreateNewCalendarEventUseCase newEventUseCase(Ref ref) {
  final repo = ref.watch(calendarRepositoryProvider);
  final showSuccessSnackbar = ShowSnackbarSuccessHandler<void, NewEventCommand>(
    message: 'Evento creato',
    contextProvider: (input) => input.context,
  );
  final refresh = InvalidateProviderOnSuccessHandler<void, NewEventCommand>(ref: ref, provider: calendarProvider);
  final showErrorSnackbar = ShowSnackbarErrorHandler<void, NewEventCommand>(
    messageProvider: (_, __) => 'Qualcosa è andato storto',
    contextProvider: (input) => input.context,
  );
  return CreateNewCalendarEventUseCase(
    repo: repo,
    interceptors: [LoadingUseCaseInterceptor(contextProvider: (input) => input.context)],
    errorHandlers: [showErrorSnackbar],
    successHandlers: [refresh, showSuccessSnackbar],
  );
}

class CreateNewCalendarEventUseCase extends UseCase<void, NewEventCommand> {
  CreateNewCalendarEventUseCase({
    required this.repo,
    super.errorHandlers,
    super.successHandlers,
    super.interceptors,
  });

  final ICalendarRepository repo;

  @override
  Future<Response<void, ApplicationError>> call(NewEventCommand input) => repo.createEvent(
        event: input.event,
      );
}
