import 'package:flutter/material.dart';

class CustomDropdownMenu<T> extends StatelessWidget {
  const CustomDropdownMenu({
    required this.label,
    required this.values,
    required this.labelProvider,
    this.initialSelection,
    super.key,
    this.customBuilder,
    this.onSelected,
    this.controller,
    this.requestFocusOnTap,
  });

  final T? initialSelection;
  final void Function(T? value)? onSelected;
  final List<T> values;
  final String label;
  final String Function(T value) labelProvider;
  final Widget Function(T value)? customBuilder;
  final TextEditingController? controller;
  final bool? requestFocusOnTap;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<T>(
      label: Text(label),
      controller: controller,
      requestFocusOnTap: requestFocusOnTap,
      initialSelection: initialSelection,
      onSelected: onSelected,
      menuHeight: MediaQuery.of(context).size.height * 0.5,
      expandedInsets: EdgeInsets.zero,
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
