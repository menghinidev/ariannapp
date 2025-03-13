import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/calendar/my_calendar/presentation/bloc/selected_date_controller.dart';
import 'package:ariannapp/features/calendar/my_calendar/usecase/delete_event/command/deleteeventcommand.dart';
import 'package:ariannapp/features/calendar/my_calendar/usecase/delete_event/delete_event_use_case.dart';
import 'package:ariannapp/features/calendar/my_calendar/usecase/get_calendar/get_calendar_use_case.dart';
import 'package:ariannapp/features/calendar/new_event/presentation/new_event_bottom_sheet.dart';
import 'package:ariannapp/features/calendar/shared/model/event/calendarevent.dart';
import 'package:ariannapp/features/home/presentation/sections/base_home_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalendarSection extends ConsumerWidget {
  const MyCalendarSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendar = ref.watch(calendarProvider);
    final selectedDate = ref.watch(selectedDateControllerProvider);
    final selectedFormat = ref.watch(selectedCalendarFormatControllerProvider);
    return AsyncLoadingSwitcher(
      value: calendar,
      margin: DistanceProvider.screenInsets.padding,
      builder: (context, calendar) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _CalendarSection(
            selectedDate: selectedDate,
            events: calendar,
            selectedFormat: selectedFormat,
          ),
          DistanceProvider.mediumDistance.spacer(),
          _CalendarEventsPerDay(
            selectedDate: selectedDate,
            events: calendar.where((event) => event.datetime.isSameDay(selectedDate)).toList(),
          ),
        ],
      ),
    );
  }
}

class _CalendarSection extends ConsumerWidget {
  const _CalendarSection({
    required this.selectedDate,
    required this.selectedFormat,
    required this.events,
  });

  final DateTime selectedDate;
  final CalendarFormat selectedFormat;
  final List<CalendarEvent> events;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TableCalendar<CalendarEvent>(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: selectedDate,
      calendarStyle: _calendarStyle(context),
      selectedDayPredicate: selectedDate.isSameDay,
      onDaySelected: (day, _) => ref.read(selectedDateControllerProvider.notifier).date = day,
      sixWeekMonthsEnforced: true,
      calendarFormat: selectedFormat,
      onFormatChanged: (format) => ref.read(selectedCalendarFormatControllerProvider.notifier).calendarFormat = format,
      eventLoader: (day) => events.where((event) => event.datetime.isSameDay(day)).toList(),
    );
  }

  CalendarStyle _calendarStyle(BuildContext context) {
    final colorScheme = context.colorScheme;
    const shape = BoxShape.circle;
    return CalendarStyle(
      selectedDecoration: BoxDecoration(
        color: colorScheme.primary,
        shape: shape,
      ),
      markerDecoration: BoxDecoration(
        color: colorScheme.tertiary,
        shape: shape,
      ),
    );
  }
}

class _CalendarEventsPerDay extends ConsumerWidget {
  const _CalendarEventsPerDay({
    required this.selectedDate,
    required this.events,
  });

  final DateTime selectedDate;
  final List<CalendarEvent> events;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseDashboardSection(
      title: selectedDate.toNiceDate,
      values: events,
      showDivider: true,
      headerButtonLabel: 'Aggiungi',
      headerButtonAction: () => ref.read(bottomSheetServiceProvider).showBottomSheet<void>(
            context,
            builder: (context) => NewEventBottomSheet(date: selectedDate),
          ),
      emptyCaseTitle: 'Non ci sono eventi',
      emptyCaseSubtitle: "Seleziona un'altra data",
      itemBuilder: (context, event) => ListTile(
        title: Text(event.title),
        contentPadding: EdgeInsets.zero,
        trailing: IconButton(
          onPressed: () {
            final command = DeleteEventCommand(eventId: event.id, context: context);
            ref.read(deleteEventUseCaseProvider).call(command);
          },
          icon: const Icon(Icons.delete_outline),
        ),
        subtitle: Text(event.isWholeDay ? event.datetime.toNiceDate : event.datetime.toExtendedDate),
      ),
    );
  }
}
