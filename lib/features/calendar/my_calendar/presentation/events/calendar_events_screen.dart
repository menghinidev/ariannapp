import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/calendar/my_calendar/presentation/events/bloc/my_calendar_controller.dart';
import 'package:ariannapp/features/calendar/my_calendar/presentation/events/components/event_list_tile.dart';
import 'package:ariannapp/features/calendar/my_calendar/usecase/delete_event/command/deleteeventcommand.dart';
import 'package:ariannapp/features/calendar/my_calendar/usecase/delete_event/delete_event_use_case.dart';
import 'package:ariannapp/features/calendar/my_calendar/usecase/get_calendar/get_calendar_use_case.dart';
import 'package:ariannapp/features/calendar/shared/model/event/calendarevent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCalendarEventsScreen extends ConsumerWidget {
  const MyCalendarEventsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(calendarProvider);
    final tagFilter = ref.watch(myCalendarEventTagControllerProvider);
    return BaseAppScreen.sliver(
      title: 'Eventi',
      children: [
        BaseSliverLoader(
          value: events,
          margin: DistanceProvider.screenInsets.padding.removeBottom,
          builder: (context, data) => EmptyCaseBuilder.sliver(
            isEmpty: data.isEmpty,
            title: 'Nessun elemento',
            builder: (context) => SliverMainAxisGroup(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: DistanceProvider.screenInsets.padding.removeBottom,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Filtra per tag',
                          style: context.textTheme.titleLarge,
                        ),
                        DistanceProvider.smallDistance.spacer(),
                        Wrap(
                          spacing: DistanceProvider.smallDistance,
                          runSpacing: DistanceProvider.smallDistance,
                          children: [
                            for (final tag in EventTag.values)
                              FilterChip(
                                label: Text(tag.formatName),
                                selected: tagFilter == tag,
                                onSelected: (selected) {
                                  ref
                                      .read(myCalendarEventTagControllerProvider.notifier)
                                      .changeTag(selected ? tag : null);
                                },
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: DistanceProvider.screenInsets.padding.removeBottom,
                  sliver: SliverList.separated(
                    itemCount: data.where((e) => tagFilter == null || e.tags.contains(tagFilter)).length,
                    separatorBuilder: (context, index) => const Divider(height: DistanceProvider.mediumDistance),
                    itemBuilder: (context, index) => Material(
                      child: CustomDismissible(
                        value: index,
                        background: const DismissibleDeleteDecoration(),
                        onDismissed: () async {
                          final usecase = ref.read(deleteEventUseCaseProvider);
                          final command = DeleteEventCommand(eventId: data[index].id, context: context);
                          await usecase.execute(command);
                        },
                        child: CalendarEventListTile(
                          event: data[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
