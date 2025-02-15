import 'package:ariannapp/core/infrastructure/utils/local_storage/local_storage_service.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_builder.g.dart';

@riverpod
class ApplicationThemeMode extends _$ApplicationThemeMode {
  @override
  FutureOr<ThemeMode> build() async {
    final localStorage = await ref.read(localStorageServiceProvider.future);
    final themeMode = await localStorage.themeMode;
    return themeMode ?? ThemeMode.system;
  }

  Future<void> changeTheme(ThemeMode value) async {
    state = AsyncData(value);
    final localStorage = await ref.read(localStorageServiceProvider.future);
    await localStorage.saveThemeMode(value);
  }
}

@riverpod
class ApplicationTheme extends _$ApplicationTheme {
  @override
  FutureOr<ThemeBuilder> build() async {
    final localStorage = await ref.read(localStorageServiceProvider.future);
    final scheme = await localStorage.flexScheme;
    return ThemeBuilder(scheme: scheme ?? FlexScheme.pinkM3);
  }

  Future<void> changeTheme(FlexScheme scheme) async {
    final newBuilder = ThemeBuilder(scheme: scheme);
    state = AsyncData(newBuilder);
    final localStorage = await ref.read(localStorageServiceProvider.future);
    await localStorage.saveFlexScheme(scheme);
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
