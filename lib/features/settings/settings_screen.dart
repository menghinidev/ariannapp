import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/horoscope/horoscope/usecase/my_sign/my_horoscope_sign_controller.dart';
import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(applicationThemeModeProvider);
    final scheme = ref.watch(applicationThemeProvider);
    final sign = ref.watch(myHoroscopeSignProvider);
    return BaseAppScreen.sliver(
      title: 'Impostazioni',
      children: [
        SliverToBoxAdapter(
          child: LoadingSwitcher(
            value: theme.valueOrNull,
            builder: (context, themeMode) => LoadingSwitcher(
              value: scheme.valueOrNull,
              builder: (context, themeBuilder) => LoadingSwitcher(
                value: sign.valueOrNull,
                builder: (context, sign) => SingleChildScrollView(
                  padding: DistanceProvider.screenInsets.padding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _ThemeModeSettingsSection(selection: themeMode),
                      DistanceProvider.mediumDistance.spacer(),
                      _ColorSchemeSettingsSection(themeBuilder: themeBuilder),
                      DistanceProvider.mediumDistance.spacer(),
                      _HoroscopeSignSection(sign: sign),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ThemeModeSettingsSection extends ConsumerWidget {
  const _ThemeModeSettingsSection({
    required this.selection,
    super.key,
  });

  final ThemeMode selection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownMenu<ThemeMode>(
      label: const Text('Tema'),
      initialSelection: selection,
      onSelected: (value) {
        if (value == null) return;
        ref.read(applicationThemeModeProvider.notifier).changeTheme(value);
      },
      dropdownMenuEntries: [
        for (final mode in ThemeMode.values) DropdownMenuEntry(value: mode, label: mode.label),
      ],
    );
  }
}

class _ColorSchemeSettingsSection extends ConsumerWidget {
  const _ColorSchemeSettingsSection({
    required this.themeBuilder,
    super.key,
  });

  final ThemeBuilder themeBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownMenu<FlexScheme>(
      label: const Text('Colori'),
      initialSelection: themeBuilder.scheme,
      onSelected: (value) => value == null ? null : ref.read(applicationThemeProvider.notifier).changeTheme(value),
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
    );
  }
}

class _HoroscopeSignSection extends ConsumerWidget {
  const _HoroscopeSignSection({
    required this.sign,
    super.key,
  });

  final HoroscopeSign sign;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownMenu<HoroscopeSign>(
      label: const Text('Tema'),
      initialSelection: sign,
      onSelected: (value) {
        if (value == null) return;
        ref.read(myHoroscopeSignProvider.notifier).changeMySign(value);
      },
      dropdownMenuEntries: [
        for (final sign in HoroscopeSign.values)
          DropdownMenuEntry(
            value: sign,
            label: sign.name.capitalize,
          ),
      ],
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
