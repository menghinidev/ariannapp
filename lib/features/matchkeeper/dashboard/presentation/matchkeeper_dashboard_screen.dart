import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/presentation/sections/completed/completed_matches_section.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/presentation/sections/ongoing/ongoing_matches_section.dart';
import 'package:ariannapp/features/matchkeeper/shared/routes/matchkeeper_routes.dart';
import 'package:ariannapp/navigation/entrypoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MatchkeeperDashboardScreen extends ConsumerStatefulWidget {
  const MatchkeeperDashboardScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MatchkeeperDashboardScreenState();
}

class _MatchkeeperDashboardScreenState extends ConsumerState<MatchkeeperDashboardScreen> {
  static const tabs = ['In corso', 'Conslusi'];
  late String selectedTab = tabs.first;

  void changeTab(int index) {
    setState(() {
      selectedTab = tabs[index];
    });
  }

  int get tabIndex => tabs.indexOf(selectedTab);

  @override
  Widget build(BuildContext context) {
    return IhneritedDashboard(
      switchTab: changeTab,
      child: BaseAppScreen.sliver(
        title: 'Matchkeeper',
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => context.goRelative(MatchkeeperRoutes.newMatch),
          ),
        ],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: tabIndex,
          onTap: changeTab,
          items: [
            ...tabs.map((e) => BottomNavigationBarItem(label: e, icon: const Icon(Icons.abc))),
          ],
        ),
        children: [
          SliverFillRemaining(
            child: const [
              OngoingMatchesSection(),
              CompletedMatchesSection(),
            ][tabIndex],
          ),
        ],
      ),
    );
  }
}

class IhneritedDashboard extends InheritedWidget {
  const IhneritedDashboard({
    required super.child,
    required this.switchTab,
    super.key,
  });

  final void Function(int index) switchTab;

  static IhneritedDashboard? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<IhneritedDashboard>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
