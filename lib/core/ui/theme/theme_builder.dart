import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_builder.g.dart';

@riverpod
class ApplicationThemeMode extends _$ApplicationThemeMode {
  @override
  ThemeMode build() => ThemeMode.light;

  void toggle() => state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
}

@riverpod
ThemeBuilder themeBuilder(ThemeBuilderRef ref) {
  return ThemeBuilder(scheme: FlexScheme.purpleM3);
}

class ThemeBuilder {
  ThemeBuilder({required this.scheme});

  final FlexScheme scheme;

  ThemeData get lightTheme => FlexThemeData.light(scheme: scheme);
  ThemeData get darkTheme => FlexThemeData.dark(scheme: scheme);
}

extension ThemeProvider on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
