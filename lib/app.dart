import 'dart:ui';

import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/utils/extensions/dateformat_localization_delegate.dart';
import 'package:ariannapp/navigation/entrypoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AriannApp extends ConsumerWidget {
  const AriannApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final themeBuilder = ref.watch(applicationThemeProvider.select((e) => e.valueOrNull));
    final themeMode = ref.watch(applicationThemeModeProvider.select((e) => e.valueOrNull));
    return MaterialApp.router(
      title: 'AriannApp',
      routerConfig: router,
      darkTheme: themeBuilder?.darkTheme(context),
      debugShowCheckedModeBanner: false,
      theme: themeBuilder?.lightTheme(context),
      themeMode: themeMode,
      supportedLocales: const [Locale('it', 'IT')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        TimeLocalizationDelegate(),
      ],
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),
    );
  }
}
