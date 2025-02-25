import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/home/presentation/sections/base_home_section.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/usecase/get_matches/command/get_matches_command.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/usecase/get_matches/get_matches_use_case.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/routes/matchkeeper_routes.dart';
import 'package:ariannapp/navigation/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MatchkeeperDashboardSection extends ConsumerWidget {
  const MatchkeeperDashboardSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final command = GetMatchesCommand(status: MatchStatus.ongoing);
    final matches = ref.watch(matchesProvider(command).select((data) => data.valueOrNull?.take(3).toList()));
    return BaseDashboardSection(
      values: matches,
      itemBuilder: (context, data) => _MatchListTile(match: data),
      title: 'Partite',
      emptyCaseTitle: 'Non sono presenti partite',
      emptyCaseSubtitle: 'Clicca sul bottone in alto a destra per aggiungere una nuova partita',
      onOpenAll: () => context.goRelative(MatchkeeperRoutes.dashboard),
    );
  }
}

class _MatchListTile extends ConsumerWidget {
  const _MatchListTile({
    required this.match,
  });

  final ApplicationMatch match;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: ListTile(
        contentPadding: DistanceProvider.cardInsets.padding.removeTop.removeBottom,
        title: Text(match.game.name),
        subtitle: Text(match.lastUpdate.toNiceDate),
        trailing: Text(
          match.sortedScores.formattedScore,
          style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
