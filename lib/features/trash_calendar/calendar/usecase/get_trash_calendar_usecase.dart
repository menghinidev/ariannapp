import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/trash_calendar/shared/model/trashcalendardate.dart';
import 'package:ariannapp/features/trash_calendar/shared/repository/provider.dart';
import 'package:ariannapp/features/trash_calendar/shared/repository/sources/trash_calendar_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_trash_calendar_usecase.g.dart';

@riverpod
FutureOr<List<TrashCalendarDate>> trashCalendar(Ref ref) async {
  final repo = ref.read(trashCalendarRepositoryProvider);
  final useCase = GetTrashCalendarUseCase(repo: repo);
  final response = await useCase.call(null);
  return response.toFuture();
}

class GetTrashCalendarUseCase extends UseCase<List<TrashCalendarDate>, void> {
  GetTrashCalendarUseCase({
    required this.repo,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
  });

  final ITrashCalendarRepository repo;

  @override
  Future<Response<List<TrashCalendarDate>, ApplicationError>> call(void input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync((e) => repo.getTrashCalendar());
    return response;
  }
}
