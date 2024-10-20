import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/horoscope/application/domain/model/horoscope/horoscope.dart';
import 'package:ariannapp/features/horoscope/presentation/components/horoscope_sign.dart';
import 'package:flutter/material.dart';

class DailyHoroscopeSection extends StatelessWidget {
  const DailyHoroscopeSection({
    required this.horoscope,
    required this.sign,
    required this.onDateSelected,
    super.key,
  });

  final HoroscopeSign sign;
  final void Function(DateTime value) onDateSelected;
  final DailyHoroscope horoscope;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _Header(onDateSelected: onDateSelected, sign: sign),
        DistanceProvider.mediumDistance.spacer(),
        Text(horoscope.data),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.sign,
    required this.onDateSelected,
  });

  final HoroscopeSign sign;

  final void Function(DateTime value) onDateSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HoroscopeSignIcon(sign: sign),
        IconButton(
          icon: const Icon(Icons.calendar_month),
          onPressed: () => showDatePicker(
            context: context,
            firstDate: DateTime.fromMicrosecondsSinceEpoch(0),
            lastDate: DateTime.now().add(const Duration(days: 365)),
          ).then((value) => value != null ? onDateSelected(value) : null),
        ),
      ],
    );
  }
}
