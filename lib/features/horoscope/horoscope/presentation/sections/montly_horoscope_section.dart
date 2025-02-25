import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/components/horoscope_header.dart';
import 'package:ariannapp/features/horoscope/horoscope/usecase/get_horoscope_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MonthlyHoroscopeSection extends ConsumerWidget {
  const MonthlyHoroscopeSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final horoscope = ref.watch(monthlyHoroscopeProvider.select((e) => e.valueOrNull));
    return LoadingSwitcher(
      value: horoscope,
      margin: DistanceProvider.screenInsets.padding,
      builder: (context, horoscope) => Padding(
        padding: DistanceProvider.screenInsets.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HoroscopeHeader(
              dateFormatter: (date) => date.toNiceMonthYear,
              horoscope: horoscope.data,
              canChangeDate: false,
            ),
            DistanceProvider.mediumDistance.spacer(),
            Text(
              'Giorni migliori',
              style: context.textTheme.titleLarge,
            ),
            DistanceProvider.smallDistance.spacer(),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final day in horoscope.standoutDays)
                  Chip(
                    color: WidgetStatePropertyAll(Theme.of(context).colorScheme.primary),
                    label: Text(day.toDayAndWeekday),
                  ),
              ],
            ),
            DistanceProvider.mediumDistance.spacer(),
            Text('Giorni peggiori', style: context.textTheme.titleLarge),
            DistanceProvider.smallDistance.spacer(),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final day in horoscope.challengingDays)
                  Chip(
                    color: WidgetStatePropertyAll(Theme.of(context).colorScheme.errorContainer),
                    label: Text(day.toDayAndWeekday),
                  ),
              ],
            ),
            DistanceProvider.smallDistance.spacer(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      horoscope.data.prediction,
                      style: context.textTheme.bodyLarge,
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
                    TextButton(
                      onPressed: () => showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.5,
                        ),
                        builder: (context) => BottomSheet(
                          onClosing: () {},
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                          ),
                          builder: (context) => SingleChildScrollView(
                            padding: DistanceProvider.screenInsets.padding,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Previsione',
                                  style: context.textTheme.titleLarge,
                                ),
                                DistanceProvider.smallDistance.spacer(),
                                Text(
                                  horoscope.data.prediction,
                                  style: context.textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      child: const Text('Mostra tutto'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
