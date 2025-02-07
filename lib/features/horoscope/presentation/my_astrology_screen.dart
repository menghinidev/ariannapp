import 'package:ariannapp/core/ui/components/components.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/horoscope/application/usecase/get_horoscope_use_case.dart';
import 'package:ariannapp/features/horoscope/presentation/bloc/my_astrology_state.dart';
import 'package:ariannapp/features/horoscope/presentation/sections/daily_horoscope_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyAstrologyScreen extends ConsumerWidget {
  const MyAstrologyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sign = ref.watch(horoscopeSignSelectorProvider);
    final horoscope = ref.watch(horoscopeProvider(sign).select((e) => e.valueOrNull));
    return BaseAppScreen(
      title: 'My astro',
      child: Padding(
        padding: DistanceProvider.screenInsets.padding,
        child: LoadingSwitcher(
          value: horoscope,
          builder: (context, data) => CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: DailyHoroscopeSection(
                  sign: sign,
                  horoscope: data,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
