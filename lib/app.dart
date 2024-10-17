import 'dart:ui';

import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/navigation/entrypoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AriannApp extends ConsumerWidget {
  const AriannApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final themeBuilder = ref.watch(themeBuilderProvider);
    final themeMode = ref.watch(applicationThemeModeProvider);
    return MaterialApp.router(
      routerConfig: router,
      darkTheme: themeBuilder.darkTheme,
      theme: themeBuilder.lightTheme,
      themeMode: themeMode,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      title: 'AriannApp',
    );
  }
}
