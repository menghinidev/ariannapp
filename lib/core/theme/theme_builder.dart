import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_builder.g.dart';

@riverpod
ThemeBuilder themeBuilder(ThemeBuilderRef ref) {
  return ThemeBuilder();
}

class ThemeBuilder {
  ThemeData get lightTheme => FlexThemeData.light(scheme: FlexScheme.purpleM3);
  ThemeData get darkTheme => FlexThemeData.dark(scheme: FlexScheme.purpleM3);
}
