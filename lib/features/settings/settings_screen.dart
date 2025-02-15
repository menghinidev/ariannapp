import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(applicationThemeModeProvider);
    final scheme = ref.watch(applicationThemeProvider);
    return BaseAppScreen(
      title: 'Impostazioni',
      child: LoadingSwitcher(
        value: theme.valueOrNull,
        builder: (context, themeMode) => LoadingSwitcher(
          value: scheme.valueOrNull,
          builder: (context, themeBuilder) => SingleChildScrollView(
            padding: DistanceProvider.screenInsets.padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownMenu<ThemeMode>(
                  label: const Text('Tema'),
                  initialSelection: themeMode,
                  onSelected: (value) {
                    if (value == null) return;
                    ref.read(applicationThemeModeProvider.notifier).changeTheme(value);
                  },
                  dropdownMenuEntries: [
                    for (final mode in ThemeMode.values) DropdownMenuEntry(value: mode, label: mode.label),
                  ],
                ),
                DistanceProvider.mediumDistance.spacer(),
                DropdownMenu<FlexScheme>(
                  label: const Text('Colori'),
                  initialSelection: themeBuilder.scheme,
                  onSelected: (value) =>
                      value == null ? null : ref.read(applicationThemeProvider.notifier).changeTheme(value),
                  dropdownMenuEntries: [
                    for (final mode in FlexScheme.values)
                      DropdownMenuEntry(
                        value: mode,
                        label: mode.name,
                        labelWidget: Row(
                          children: [
                            SizedBox.square(
                              dimension: 24,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: FlexThemeData.light(scheme: mode).primaryColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            DistanceProvider.mediumDistance.spacer(axis: Axis.horizontal),
                            Text(mode.name),
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension on ThemeMode {
  String get label {
    switch (this) {
      case ThemeMode.dark:
        return 'Scura';
      case ThemeMode.light:
        return 'Chiara';
      case ThemeMode.system:
        return 'Sistema';
    }
  }
}
