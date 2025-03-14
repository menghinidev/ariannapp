import 'package:ariannapp/features/calendar/shared/model/event/calendarevent.dart';
import 'package:ariannapp/features/calendar/shared/model/event_builder/calendareventbuilder.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'new_event_controller.g.dart';

@riverpod
class NewEventController extends _$NewEventController {
  @override
  CalendarEventBuilder build(DateTime start) => CalendarEventBuilder(
        day: start,
        time: TimeOfDay.now(),
      );

  void date(DateTime day) {
    state = state.copyWith(day: day);
  }

  void time(TimeOfDay time) {
    state = state.copyWith(time: time);
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

  void category(EventCategory category) {
    state = state.copyWith(category: category);
  }

  void toggleTag(EventTag tag) {
    final tags = [...state.tags];
    if (tags.contains(tag)) {
      tags.remove(tag);
    } else {
      tags.add(tag);
    }
    state = state.copyWith(tags: tags);
  }
}

extension CalendarEventBuilderValidator on CalendarEventBuilder {
  bool get isValid {
    if (title == null || title!.isEmpty) return false;
    if (isWholeDay) return day != null;
    return day != null && time != null;
  }
}
