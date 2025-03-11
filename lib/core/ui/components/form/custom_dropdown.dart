import 'package:flutter/material.dart';

class CustomDropdownMenu<T> extends StatelessWidget {
  const CustomDropdownMenu({
    required this.label,
    required this.initialSelection,
    required this.values,
    required this.labelProvider,
    super.key,
    this.customBuilder,
    this.onSelected,
  });

  final T initialSelection;
  final void Function(T? value)? onSelected;
  final List<T> values;
  final String label;
  final String Function(T value) labelProvider;
  final Widget Function(T value)? customBuilder;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<T>(
      label: Text(label),
      initialSelection: initialSelection,
      onSelected: onSelected,
      menuHeight: MediaQuery.of(context).size.height * 0.5,
      expandedInsets: EdgeInsets.zero,
      trailingIcon: const Icon(Icons.change_circle),
      inputDecorationTheme: const InputDecorationTheme(
        border: UnderlineInputBorder(borderSide: BorderSide.none),
      ),
      dropdownMenuEntries: [
        for (final value in values)
          DropdownMenuEntry(
            value: value,
            label: labelProvider(value),
            labelWidget: customBuilder?.call(value),
          ),
      ],
    );
  }
}
