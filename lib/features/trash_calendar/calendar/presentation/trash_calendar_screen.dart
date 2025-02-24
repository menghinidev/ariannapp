import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/trash_calendar/calendar/presentation/sections/trash_calendar_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrashCalendarScreen extends ConsumerWidget {
  const TrashCalendarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const BaseAppScreen.sliver(
      title: 'Calendario Raccolta',
      children: [
        TrashCalendarListView(),
      ],
    );
  }
}
