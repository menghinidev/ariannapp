import 'package:ariannapp/features/calendar/shared/model/event/calendarevent.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'new_event_controller.g.dart';

@riverpod
class NewEventController extends _$NewEventController {
  @override
  CalendarEventBuilder build(DateTime start) => CalendarEventBuilder(start: start);

  void startDate(DateTime start) {
    state = state.copyWith(start: start);
  }

  void endDate(DateTime end) {
    state = state.copyWith(end: end);
  }

  void isWholeDay(bool isWholeDay) {
    state = state.copyWith(isWholeDay: isWholeDay);
  }

  void title(String title) {
    state = state.copyWith(title: title);
  }

  void description(String description) {
    state = state.copyWith(description: description);
  }
}

extension CalendarEventBuilderValidator on CalendarEventBuilder {
  bool get isValid {
    if (title == null || title!.isEmpty) return false;
    if (isWholeDay) return start != null;
    return start != null && end != null && start!.isBefore(end!);
  }
}
