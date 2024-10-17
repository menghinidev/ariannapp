import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_builder.g.dart';

@riverpod
class ApplicationThemeMode extends _$ApplicationThemeMode {
  @override
  ThemeMode build() => ThemeMode.system;

  set themeMode(ThemeMode value) => state = value;

  ThemeMode get themeMode => state;
}

@riverpod
class ApplicationTheme extends _$ApplicationTheme {
  @override
  ThemeBuilder build() {
    return ThemeBuilder(scheme: FlexScheme.pinkM3);
  }

  void changeTheme(FlexScheme scheme) {
    final newBuilder = ThemeBuilder(scheme: scheme);
    state = newBuilder;
  }
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
