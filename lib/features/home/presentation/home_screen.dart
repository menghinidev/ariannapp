import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/shared/routes/matchkeeper_routes.dart';
import 'package:ariannapp/navigation/entrypoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseAppScreen(
      title: 'AriannApp',
      fab: FloatingActionButton.extended(
        onPressed: () => context.goRelative(MatchkeeperRoutes.dashboard),
        label: const Text('Matchkeeper'),
      ),
      child: const SizedBox.expand(),
    );
  }
}
