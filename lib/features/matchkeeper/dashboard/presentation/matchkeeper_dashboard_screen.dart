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

class _MatchkeeperDashboardScreenState extends ConsumerState<MatchkeeperDashboardScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseAppScreen(
      title: 'Matchkeeper',
      bottomAppBarWidget: TabBar(
        controller: _tabController,
        tabs: const [Tab(text: 'In corso'), Tab(text: 'Conclusi')],
      ),
      fab: FloatingActionButton.extended(
        onPressed: () => context.goRelative(MatchkeeperRoutes.newMatch),
        label: const Text('Nuova partita'),
      ),
      child: IhneritedDashboard(
        tabController: _tabController,
        child: TabBarView(
          controller: _tabController,
          children: const [
            OngoingMatchesSection(),
            CompletedMatchesSection(),
          ],
        ),
      ),
    );
  }
}

class IhneritedDashboard extends InheritedWidget {
  const IhneritedDashboard({
    required super.child,
    required this.tabController,
    super.key,
  });

  final TabController tabController;

  static IhneritedDashboard? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<IhneritedDashboard>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
