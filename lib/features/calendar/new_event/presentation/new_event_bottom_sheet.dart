import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/calendar/new_event/presentation/bloc/new_event_controller.dart';
import 'package:ariannapp/features/calendar/new_event/usecase/new_event/command/neweventcommand.dart';
import 'package:ariannapp/features/calendar/new_event/usecase/new_event/new_event_use_case.dart';
import 'package:ariannapp/features/calendar/shared/model/event/calendarevent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        _DateTextFormField(
          label: 'Dal',
          hint: 'dd/mm/yyyy',
          value: state.start,
          onChanged: (value) => controllerProvider(ref).startDate(value),
        ),
        DistanceProvider.smallDistance.spacer(),
        _DateTextFormField(
          label: 'Al',
          hint: 'dd/mm/yyyy',
          value: state.end,
          onChanged: (value) => controllerProvider(ref).endDate(value),
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
    return _DateTextFormField(
      label: 'Il giorno',
      hint: 'dd/mm/yyyy',
      value: state.start,
      onChanged: (value) => controllerProvider(ref).startDate(value),
    );
  }
}

class DDMMYYYYFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final regex = RegExp(regexExpression);
    if (regex.hasMatch(newValue.text)) {
      return newValue;
    }
    return oldValue;
  }

  static String regexExpression =
      r'^(?:(?:31(/|-|.)(?:0?[13578]|1[02]))1|(?:(?:29|30)(/|-|.)(?:0?[13-9]|1[0-2])2))(?:(?:1[6-9]|[2-9]d)?d{2})$|^(?:29(/|-|.)0?23(?:(?:(?:1[6-9]|[2-9]d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1d|2[0-8])(/|-|.)(?:(?:0?[1-9])|(?:1[0-2]))4(?:(?:1[6-9]|[2-9]d)?d{2})$';
}

class _DateTextFormField extends StatefulWidget {
  const _DateTextFormField({
    required this.label,
    required this.hint,
    required this.onChanged,
    this.value,
    super.key,
  });

  final String label;
  final String hint;
  final void Function(DateTime date) onChanged;
  final DateTime? value;

  @override
  State<_DateTextFormField> createState() => _DateTextFormFieldState();
}

class _DateTextFormFieldState extends State<_DateTextFormField> {
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
    _controller = TextEditingController(text: widget.value?.toNiceDate);
  }

  @override
  void didUpdateWidget(covariant _DateTextFormField oldWidget) {
    if (oldWidget.value != widget.value && widget.value != null) {
      _controller.text = widget.value!.toNiceDate;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.calendar_month_outlined),
        labelText: widget.label,
        hintText: widget.hint,
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(const Duration(days: 365)),
          lastDate: DateTime.now().add(const Duration(days: 365)),
        ).then((date) {
          if (date == null) return;
          widget.onChanged.call(date);
          _controller.text = date.toNiceDate;
        });
      },
    );
  }
}
