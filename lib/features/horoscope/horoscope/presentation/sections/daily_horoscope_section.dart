import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/components/horoscope_header.dart';
import 'package:ariannapp/features/horoscope/horoscope/usecase/get_horoscope_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DailyHoroscopeSection extends ConsumerWidget {
  const DailyHoroscopeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final horoscope = ref.watch(dailyHoroscopeProvider.select((e) => e.valueOrNull));
    return LoadingSwitcher(
      value: horoscope,
      margin: DistanceProvider.screenInsets.padding,
      builder: (context, horoscope) => Padding(
        padding: DistanceProvider.screenInsets.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HoroscopeHeader(
              dateFormatter: (date) => date.toNiceDate,
              horoscope: horoscope,
            ),
            DistanceProvider.mediumDistance.spacer(),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: Text(
                horoscope.prediction,
                style: context.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
