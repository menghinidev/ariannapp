import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/bloc/my_astrology_state.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/components/horoscope_sign.dart';
import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HoroscopeHeader extends ConsumerWidget {
  const HoroscopeHeader({
    required this.horoscope,
    required this.dateFormatter,
    this.canChangeDate = true,
    super.key,
  });

  final SimpleHoroscope horoscope;
  final String Function(DateTime date) dateFormatter;
  final bool canChangeDate;

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
              dateFormatter(horoscope.date),
              style: context.textTheme.titleLarge,
            ),
          ),
        ),
        if (canChangeDate)
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
