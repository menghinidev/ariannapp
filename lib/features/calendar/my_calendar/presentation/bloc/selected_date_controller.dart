import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:table_calendar/table_calendar.dart';

part 'selected_date_controller.g.dart';

@riverpod
class SelectedDateController extends _$SelectedDateController {
  @override
  DateTime build() => DateTime.now();

  DateTime get date => state;

  set date(DateTime date) => state = date;
}

@riverpod
class SelectedCalendarFormatController extends _$SelectedCalendarFormatController {
  @override
  CalendarFormat build() => CalendarFormat.month;

  CalendarFormat get calendarFormat => state;

  set calendarFormat(CalendarFormat format) => state = format;
}
