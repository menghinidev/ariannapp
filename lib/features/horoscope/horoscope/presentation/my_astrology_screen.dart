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
  static const tabs = {
    'Giornaliera': Icons.today,
    'Settimanale': Icons.calendar_view_week,
    'Mensile': Icons.calendar_view_month,
  };
  late String selectedTab = tabs.keys.first;

  void changeTab(int index) {
    setState(() {
      final keys = tabs.keys.toList();
      selectedTab = keys[index];
    });
  }

  int get tabIndex => tabs.keys.toList().indexOf(selectedTab);

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
          ...tabs.entries.map(
            (e) => BottomNavigationBarItem(
              label: e.key,
              icon: Icon(e.value),
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
