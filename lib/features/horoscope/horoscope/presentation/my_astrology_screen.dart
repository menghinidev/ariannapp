import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/bloc/my_astrology_state.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/components/horoscope_sign.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/sections/daily_horoscope_section.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/sections/montly_horoscope_section.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/sections/weekly_horoscope_section.dart';
import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyAstrologyScreen extends ConsumerStatefulWidget {
  const MyAstrologyScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAstrologyScreenState();
}

class _MyAstrologyScreenState extends ConsumerState<MyAstrologyScreen> with TickerProviderStateMixin {
  late final TabController _tabController;

  static const tabs = ['Giornaliera', 'Settimanale', 'Mensile'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sign = ref.watch(horoscopeSignSelectorProvider);
    return BaseAppScreen(
      title: sign.name.capitalize,
      fab: _WheelHoroscopeSelector(initialSign: sign),
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            indicatorColor: Theme.of(context).colorScheme.primary,
            labelColor: Theme.of(context).colorScheme.primary,
            unselectedLabelColor: Theme.of(context).colorScheme.onSurface,
            tabs: [...tabs.map((e) => Tab(text: e))],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                DailyHoroscopeSection(),
                WeeklyHoroscopeSection(),
                MonthlyHoroscopeSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _WheelHoroscopeSelector extends ConsumerStatefulWidget {
  const _WheelHoroscopeSelector({required this.initialSign});

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
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.onSurface),
        shape: BoxShape.circle,
      ),
      padding: DistanceProvider.smallDistance.padding,
      child: HoroscopeSignIcon(sign: sign),
    );
  }
}
