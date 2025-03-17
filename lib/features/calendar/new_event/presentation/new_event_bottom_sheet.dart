import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/calendar/new_event/presentation/bloc/new_event_controller.dart';
import 'package:ariannapp/features/calendar/new_event/usecase/new_event/command/neweventcommand.dart';
import 'package:ariannapp/features/calendar/new_event/usecase/new_event/new_event_use_case.dart';
import 'package:ariannapp/features/calendar/shared/model/event/calendarevent.dart';
import 'package:ariannapp/features/calendar/shared/model/event_builder/calendareventbuilder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class NewEventBottomSheet extends ConsumerWidget {
  const NewEventBottomSheet({required this.date, super.key});

  final DateTime date;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(newEventControllerProvider(date));
    return KeyboardFocusWrapper(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: DistanceProvider.mediumDistance),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _NewEventHeader(state: state),
            DistanceProvider.mediumDistance.spacer(),
            TextField(
              decoration: const InputDecoration(labelText: 'Titolo'),
              onChanged: (value) => ref.read(newEventControllerProvider(date).notifier).title(value),
            ),
            DistanceProvider.mediumDistance.spacer(),
            CustomDropdownMenu<EventCategory>(
              values: EventCategory.values,
              label: 'Tipologia',
              labelProvider: (category) => category.formatName,
              initialSelection: state.category,
              onSelected: (value) =>
                  value == null ? null : ref.read(newEventControllerProvider(date).notifier).category(value),
            ),
            DistanceProvider.mediumDistance.spacer(),
            SwitchListTile.adaptive(
              value: state.isWholeDay,
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Tutto il giorno',
                style: context.textTheme.titleLarge,
              ),
              onChanged: (value) => ref.read(newEventControllerProvider(date).notifier).isWholeDay(value),
            ),
            DistanceProvider.smallDistance.spacer(),
            Row(
              children: [
                Expanded(
                  child: DateFormFieldSelector(
                    label: 'Il giorno',
                    hint: 'dd/mm/yyyy',
                    value: state.day,
                    onChanged: (value) => ref.read(newEventControllerProvider(date).notifier).date(value),
                  ),
                ),
                if (!state.isWholeDay) ...[
                  DistanceProvider.largeDistance.spacer(axis: Axis.horizontal),
                  Expanded(
                    child: TimeFormFieldSelector(
                      label: 'Alle',
                      hint: 'hh:mm',
                      value: state.time,
                      onChanged: (value) => ref.read(newEventControllerProvider(date).notifier).time(value),
                    ),
                  ),
                ],
              ],
            ),
            DistanceProvider.mediumDistance.spacer(),
            Text(
              'Tags',
              style: context.textTheme.titleLarge,
            ),
            DistanceProvider.smallDistance.spacer(),
            Wrap(
              spacing: DistanceProvider.smallDistance,
              children: [
                for (final tag in EventTag.values)
                  FilterChip(
                    label: Text(tag.formatName),
                    selected: state.tags.contains(tag),
                    onSelected: (value) => ref.read(newEventControllerProvider(date).notifier).toggleTag(tag),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _NewEventHeader extends ConsumerWidget {
  const _NewEventHeader({
    required this.state,
  });

  final CalendarEventBuilder state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Nuovo evento',
            style: context.textTheme.headlineSmall,
          ),
        ),
        IconButton(
          onPressed: !state.isValid ? null : () => _onTap(context, ref),
          icon: const Icon(Icons.add_outlined),
        ),
      ],
    );
  }

  void _onTap(BuildContext context, WidgetRef ref) {
    context.pop();
    final command = NewEventCommand(
      context: context,
      event: state,
    );
    ref.read(newEventUseCaseProvider).execute(command);
  }
}
