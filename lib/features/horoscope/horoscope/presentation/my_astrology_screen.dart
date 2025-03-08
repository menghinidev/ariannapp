import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/bloc/my_astrology_state.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/components/horoscope_wheel_selector.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/sections/daily_horoscope_section.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/sections/montly_horoscope_section.dart';
import 'package:ariannapp/features/horoscope/horoscope/presentation/sections/weekly_horoscope_section.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyAstrologyScreen extends ConsumerStatefulWidget {
  const MyAstrologyScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAstrologyScreenState();
}

class _MyAstrologyScreenState extends ConsumerState<MyAstrologyScreen> {
  static const tabs = ['Giornaliera', 'Settimanale', 'Mensile'];
  late String selectedTab = tabs.first;

  void changeTab(int index) {
    setState(() {
      selectedTab = tabs[index];
    });
  }

  int get tabIndex => tabs.indexOf(selectedTab);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sign = ref.watch(horoscopeSignSelectorProvider.select((value) => value.valueOrNull));
    return BaseAppScreen.sliver(
      title: sign == null ? '' : sign.name.capitalize,
      fab: sign == null ? null : WheelHoroscopeSelector(initialSign: sign),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabIndex,
        onTap: changeTab,
        items: [
          ...tabs.map(
            (e) => BottomNavigationBarItem(
              label: e,
              icon: const Icon(Icons.calendar_month_outlined),
            ),
          ),
        ],
      ),
      children: [
        SliverFillRemaining(
          child: [
            const DailyHoroscopeSection(),
            const WeeklyHoroscopeSection(),
            const MonthlyHoroscopeSection(),
          ][tabIndex],
        ),
      ],
    );
  }
}
