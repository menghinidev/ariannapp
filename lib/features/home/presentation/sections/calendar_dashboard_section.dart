import 'package:ariannapp/features/home/presentation/sections/base_home_section.dart';
import 'package:ariannapp/features/trash_calendar/calendar/presentation/components/trash_calendar_item.dart';
import 'package:ariannapp/features/trash_calendar/calendar/usecase/get_trash_calendar_usecase.dart';
import 'package:ariannapp/features/trash_calendar/routes/trash_calendar_routes.dart';
import 'package:ariannapp/navigation/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarDashboardSection extends ConsumerWidget {
  const CalendarDashboardSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendar = ref.watch(trashCalendarProvider.select((e) => e.valueOrNull?.sublist(1, 3)));
    return BaseDashboardSection(
      values: calendar,
      onOpenAll: () => context.goRelative(TrashCalendarScreenRoute.pagePath),
      itemBuilder: (context, item) => TrashCalendarItem(item: item),
      title: 'Raccolta rifiuti',
      emptyCaseTitle: 'Nessuna raccolta rifiuti',
    );
  }
}
