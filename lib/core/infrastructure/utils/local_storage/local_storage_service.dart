import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'local_storage_service.g.dart';

@riverpod
FutureOr<ILocalStorageService> localStorageService(Ref ref) async {
  return LocalStorageService(
    instance: await SharedPreferences.getInstance(),
  );
}

abstract class ILocalStorageService {
  Future<void> saveThemeMode(ThemeMode mode);
  Future<void> saveFlexScheme(FlexScheme scheme);
  Future<void> saveAccessToken(String token);
  Future<void> saveHoroscopeSign(String sign);
  Future<String?> get horoscopeSign;
  Future<String?> get accessToken;
  Future<ThemeMode?> get themeMode;
  Future<FlexScheme?> get flexScheme;
}

class LocalStorageService implements ILocalStorageService {
  LocalStorageService({required this.instance});

  final SharedPreferences instance;

  static const String themeModeKey = 'theme-mode';
  static const String flexSchemeKey = 'theme-scheme';
  static const String accessTokenKey = 'access-token';
  static const String horoscopeSignKey = 'horoscope-sign';

  @override
  Future<void> saveFlexScheme(FlexScheme scheme) async {
    await instance.setString(flexSchemeKey, scheme.name);
  }

  @override
  Future<void> saveThemeMode(ThemeMode mode) {
    return instance.setString(themeModeKey, mode.name);
  }

  @override
  Future<FlexScheme?> get flexScheme async {
    final value = instance.getString(flexSchemeKey);
    if (value == null) return null;
    return FlexScheme.values.firstWhere((element) => element.name == value);
  }

  @override
  Future<ThemeMode?> get themeMode async {
    final value = instance.getString(themeModeKey);
    if (value == null) return null;
    return ThemeMode.values.firstWhere((element) => element.name == value);
  }

  @override
  Future<String?> get accessToken async {
    return instance.getString(accessTokenKey);
  }

  @override
  Future<void> saveAccessToken(String token) {
    return instance.setString(accessTokenKey, token);
  }

  @override
  Future<String?> get horoscopeSign async => instance.getString(horoscopeSignKey);

  @override
  Future<void> saveHoroscopeSign(String sign) {
    return instance.setString(horoscopeSignKey, sign);
  }
}
