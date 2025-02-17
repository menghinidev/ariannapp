import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/horoscope/daily_horoscope/presentation/bloc/my_astrology_state.dart';
import 'package:ariannapp/features/horoscope/daily_horoscope/presentation/components/horoscope_sign.dart';
import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DailyHoroscopeSection extends StatelessWidget {
  const DailyHoroscopeSection({
    required this.horoscope,
    super.key,
  });

  final SimpleDailyHoroscope horoscope;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Header(horoscope: horoscope),
        DistanceProvider.mediumDistance.spacer(),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Text(
            horoscope.prediction,
            style: context.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}

class _Header extends ConsumerWidget {
  const _Header({
    required this.horoscope,
  });

  final SimpleDailyHoroscope horoscope;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
          alignment: Alignment.center,
          padding: DistanceProvider.smallDistance.padding,
          child: HoroscopeSignIcon(sign: horoscope.sign),
        ),
        DistanceProvider.mediumDistance.spacer(axis: Axis.horizontal),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              horoscope.date.toNiceDate,
              style: context.textTheme.titleLarge,
            ),
          ),
        ),
        IconButton.filled(
          onPressed: () => showDatePicker(
            context: context,
            firstDate: DateTime.fromMicrosecondsSinceEpoch(0),
            lastDate: DateTime.now(),
          ).then((value) => value == null ? null : ref.read(horoscopeDateSelectorProvider.notifier).date = value),
          icon: const Icon(Icons.calendar_month_outlined),
        ),
      ],
    );
  }
}
