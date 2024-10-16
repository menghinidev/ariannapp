import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_builder.g.dart';

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
