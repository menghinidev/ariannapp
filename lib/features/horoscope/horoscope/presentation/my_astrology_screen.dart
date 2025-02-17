import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/bloc/my_astrology_state.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/components/horoscope_sign.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/sections/daily_horoscope_section.dart';
import 'package:ariannapp/features/horoscope/horoscope/usecase/get_horoscope_use_case.dart';
import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyAstrologyScreen extends ConsumerWidget {
  const MyAstrologyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final horoscope = ref.watch(horoscopeProvider.select((e) => e.valueOrNull));
    return BaseAppScreen.sliver(
      fab: horoscope == null ? null : _WheelHoroscopeSelector(initialSign: horoscope.sign),
      child: LoadingSwitcher(
        margin: DistanceProvider.screenInsets.padding,
        value: horoscope,
        builder: (context, data) => CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: Text(
                data.sign.name.capitalize,
              ),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(12))),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: DistanceProvider.screenInsets.padding,
                child: DailyHoroscopeSection(
                  horoscope: data,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WheelHoroscopeSelector extends ConsumerStatefulWidget {
  const _WheelHoroscopeSelector({required this.initialSign, super.key});

  final HoroscopeSign initialSign;

  static const double itemExtent = 48;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __WheelHoroscopeSelectorState();
}

class __WheelHoroscopeSelectorState extends ConsumerState<_WheelHoroscopeSelector> {
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
          ref.read(horoscopeSignSelectorProvider.notifier).sign = HoroscopeSign.values[value];
        },
        physics: const FixedExtentScrollPhysics(),
        itemExtent: _WheelHoroscopeSelector.itemExtent,
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
      width: _WheelHoroscopeSelector.itemExtent,
      height: _WheelHoroscopeSelector.itemExtent,
      decoration: BoxDecoration(border: Border.all(color: Colors.white), shape: BoxShape.circle),
      padding: DistanceProvider.smallDistance.padding,
      child: HoroscopeSignIcon(sign: sign),
    );
  }
}
