import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/bloc/my_astrology_state.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/components/horoscope_sign.dart';
import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WheelHoroscopeSelector extends ConsumerStatefulWidget {
  const WheelHoroscopeSelector({
    required this.initialSign,
    super.key,
  });

  final HoroscopeSign initialSign;

  static const double itemExtent = 48;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WheelHoroscopeSelectorState();
}

class _WheelHoroscopeSelectorState extends ConsumerState<WheelHoroscopeSelector> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    final horoscopeIndex = HoroscopeSign.values.indexOf(widget.initialSign);
    _scrollController = FixedExtentScrollController(initialItem: horoscopeIndex);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 100, maxHeight: 48 * 3),
      child: ListWheelScrollView(
        controller: _scrollController,
        onSelectedItemChanged: (value) {
          ref.read(horoscopeSignSelectorProvider.notifier).setSign(HoroscopeSign.values[value]);
        },
        physics: const FixedExtentScrollPhysics(),
        itemExtent: WheelHoroscopeSelector.itemExtent,
        useMagnifier: true,
        magnification: 1.5,
        children: HoroscopeSign.values.map((element) => _HoroscopeSignSelector(sign: element)).toList(),
      ),
    );
  }
}

class _HoroscopeSignSelector extends StatelessWidget {
  const _HoroscopeSignSelector({
    required this.sign,
  });

  final HoroscopeSign sign;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: WheelHoroscopeSelector.itemExtent,
      height: WheelHoroscopeSelector.itemExtent,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.onSurface),
        color: Theme.of(context).colorScheme.surface,
        shape: BoxShape.circle,
      ),
      padding: DistanceProvider.smallDistance.padding,
      child: HoroscopeSignIcon(sign: sign),
    );
  }
}
