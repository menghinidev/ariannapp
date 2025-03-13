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
          TableCalendar<CalendarEvent>(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: selectedDate,
            calendarStyle: CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: context.colorScheme.primary,
                shape: BoxShape.circle,
              ),
              markerDecoration: BoxDecoration(
                color: context.colorScheme.tertiary,
                shape: BoxShape.circle,
              ),
            ),
            selectedDayPredicate: selectedDate.isSameDay,
            onDaySelected: (day, _) => ref.read(selectedDateControllerProvider.notifier).date = day,
            sixWeekMonthsEnforced: true,
            calendarFormat: selectedFormat,
            onFormatChanged: (format) =>
                ref.read(selectedCalendarFormatControllerProvider.notifier).calendarFormat = format,
            eventLoader: (day) => calendar.where((event) => event.start.isSameDay(day)).toList(),
          ),
          DistanceProvider.mediumDistance.spacer(),
          BaseDashboardSection(
            title: selectedDate.toNiceDate,
            values: calendar.where((event) => event.start.isSameDay(selectedDate)).toList(),
            showDivider: true,
            headerButtonLabel: 'Aggiungi',
            headerButtonAction: () => ref.read(bottomSheetServiceProvider).showBottomSheet<void>(
                  context,
                  builder: (context) => NewEventBottomSheet(date: selectedDate),
                ),
            emptyCaseTitle: 'Non ci sono eventi',
            emptyCaseSubtitle: "Seleziona un'altra data",
            itemBuilder: (context, event) => CustomDismissible(
              value: event,
              onDismissed: () {
                final command = DeleteEventCommand(eventId: event.id, context: context);
                ref.read(deleteEventUseCaseProvider).call(command);
              },
              background: const DismissibleCompleteDecoration(),
              child: ListTile(
                title: Text(event.title),
                contentPadding: EdgeInsets.zero,
                subtitle: Text(event.start.toNiceDate),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
