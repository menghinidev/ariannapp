import 'package:ariannapp/core/infrastructure/utils/utils.dart';
import 'package:flutter/material.dart';

class DateFormFieldSelector extends StatelessWidget {
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
  Widget build(BuildContext context) {
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

class TimeFormFieldSelector extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return _CustomFormFieldSelector<TimeOfDay>(
      label: label,
      hint: hint,
      formatter: (time) => time.toTime,
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
