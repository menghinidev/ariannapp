import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/calendar/new_event/presentation/bloc/new_event_controller.dart';
import 'package:ariannapp/features/calendar/new_event/usecase/new_event/command/neweventcommand.dart';
import 'package:ariannapp/features/calendar/new_event/usecase/new_event/new_event_use_case.dart';
import 'package:ariannapp/features/calendar/shared/model/builder/calendareventbuilder.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Nuovo evento',
                    style: context.textTheme.headlineSmall,
                  ),
                ),
                IconButton(
                  onPressed: !state.isValid
                      ? null
                      : () {
                          context.pop();
                          final command = NewEventCommand(
                            context: context,
                            event: state,
                          );
                          ref.read(newEventUseCaseProvider).call(command);
                        },
                  icon: const Icon(Icons.add_outlined),
                ),
              ],
            ),
            DistanceProvider.mediumDistance.spacer(),
            TextField(
              decoration: const InputDecoration(labelText: 'Titolo'),
              onChanged: (value) => ref.read(newEventControllerProvider(date).notifier).title(value),
            ),
            DistanceProvider.mediumDistance.spacer(),
            SwitchListTile.adaptive(
              value: state.isWholeDay,
              title: const Text('Tutto il giorno'),
              onChanged: (value) => ref.read(newEventControllerProvider(date).notifier).isWholeDay(value),
            ),
            DistanceProvider.smallDistance.spacer(),
            if (state.isWholeDay) ...[
              _WholeDaySection(
                state: state,
                controllerProvider: (ref) => ref.read(newEventControllerProvider(date).notifier),
              ),
              DistanceProvider.mediumDistance.spacer(),
            ] else ...[
              _BoundedDateRangeSection(
                state: state,
                controllerProvider: (ref) => ref.read(newEventControllerProvider(date).notifier),
              ),
              DistanceProvider.mediumDistance.spacer(),
            ],
            TextField(
              decoration: const InputDecoration(labelText: 'Descrizione'),
              onChanged: (value) => ref.read(newEventControllerProvider(date).notifier).description(value),
            ),
            DistanceProvider.smallDistance.spacer(),
          ],
        ),
      ),
    );
  }
}

class _BoundedDateRangeSection extends ConsumerWidget {
  const _BoundedDateRangeSection({required this.state, required this.controllerProvider});

  final CalendarEventBuilder state;
  final NewEventController Function(WidgetRef ref) controllerProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DateFormFieldSelector(
          label: 'Il',
          hint: 'dd/mm/yyyy',
          value: state.day,
          onChanged: (value) => controllerProvider(ref).date(value),
        ),
        DistanceProvider.smallDistance.spacer(),
        TimeFormFieldSelector(
          label: 'Alle',
          hint: 'hh:mm',
          value: state.time,
          onChanged: (value) => controllerProvider(ref).time(value),
        ),
      ],
    );
  }
}

class _WholeDaySection extends ConsumerWidget {
  const _WholeDaySection({required this.state, required this.controllerProvider});

  final CalendarEventBuilder state;
  final NewEventController Function(WidgetRef ref) controllerProvider;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DateFormFieldSelector(
      label: 'Il giorno',
      hint: 'dd/mm/yyyy',
      value: state.day,
      onChanged: (value) => controllerProvider(ref).date(value),
    );
  }
}

class DateFormFieldSelector extends ConsumerWidget {
  const DateFormFieldSelector({
    required this.label,
    required this.hint,
    required this.onChanged,
    this.value,
    super.key,
  });

  final String label;
  final String hint;
  final DateTime? value;
  final void Function(DateTime date) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _CustomFormFieldSelector<DateTime>(
      label: label,
      hint: hint,
      formatter: (date) => date.toNiceDate,
      value: value,
      onChanged: onChanged,
      leading: const Icon(Icons.calendar_month_outlined),
      picker: (context) => showDatePicker(
        context: context,
        initialDate: value,
        firstDate: DateTime.now().subtract(const Duration(days: 365)),
        lastDate: DateTime.now().add(const Duration(days: 365)),
      ),
    );
  }
}

class TimeFormFieldSelector extends ConsumerWidget {
  const TimeFormFieldSelector({
    required this.label,
    required this.hint,
    required this.onChanged,
    this.value,
    super.key,
  });

  final String label;
  final String hint;
  final TimeOfDay? value;
  final void Function(TimeOfDay date) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _CustomFormFieldSelector<TimeOfDay>(
      label: label,
      hint: hint,
      formatter: (time) => time.format(context),
      value: value,
      leading: const Icon(Icons.access_time_outlined),
      onChanged: onChanged,
      picker: (context) => showTimePicker(
        context: context,
        initialTime: value ?? TimeOfDay.now(),
      ),
    );
  }
}

class _CustomFormFieldSelector<T> extends StatefulWidget {
  const _CustomFormFieldSelector({
    required this.label,
    required this.hint,
    required this.picker,
    required this.formatter,
    this.leading,
    this.onChanged,
    this.value,
    super.key,
  });

  final String label;
  final String hint;
  final Widget? leading;
  final Future<T?> Function(BuildContext context) picker;
  final void Function(T date)? onChanged;
  final T? value;
  final String Function(T date) formatter;

  @override
  State<_CustomFormFieldSelector<T>> createState() => _CustomFormFieldStateSelector<T>();
}

class _CustomFormFieldStateSelector<T> extends State<_CustomFormFieldSelector<T>> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _init() {
    _controller = TextEditingController(text: widget.value != null ? widget.formatter(widget.value as T) : null);
  }

  @override
  void didUpdateWidget(covariant _CustomFormFieldSelector<T> oldWidget) {
    if (oldWidget.value != widget.value && widget.value != null) {
      _controller.text = widget.formatter(widget.value as T);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        prefixIcon: widget.leading,
        labelText: widget.label,
        hintText: widget.hint,
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        widget.picker(context).then((value) {
          if (value == null) return;
          widget.onChanged?.call(value);
          _controller.text = widget.formatter(value);
        });
      },
    );
  }
}
