import 'package:ariannapp/features/calendar/shared/model/event/calendarevent.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_calendar_controller.g.dart';

@riverpod
class MyCalendarEventTagController extends _$MyCalendarEventTagController {
  @override
  EventTag? build() {
    return null;
  }

  // ignore: use_setters_to_change_properties
  void changeTag(EventTag? tag) {
    state = tag;
  }
}
