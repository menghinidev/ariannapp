import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/horoscope/daily_horoscope/presentation/components/horoscope_sign.dart';
import 'package:ariannapp/features/horoscope/shared/horoscope/horoscope.dart';
import 'package:flutter/material.dart';

class DailyHoroscopeSection extends StatelessWidget {
  const DailyHoroscopeSection({
    required this.horoscope,
    required this.sign,
    super.key,
  });

  final HoroscopeSign sign;
  final SimpleDailyHoroscope horoscope;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Header(sign: sign),
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

class _Header extends StatelessWidget {
  const _Header({
    required this.sign,
  });

  final HoroscopeSign sign;

  @override
  Widget build(BuildContext context) {
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
          child: HoroscopeSignIcon(sign: sign),
        ),
        DistanceProvider.mediumDistance.spacer(axis: Axis.horizontal),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              DateTime.now().toNiceDate,
              style: context.textTheme.titleLarge,
            ),
          ),
        ),
      ],
    );
  }
}
