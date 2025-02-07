import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/presentation/components/match_card.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/usecase/get_matches/command/get_matches_command.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/usecase/get_matches/get_matches_use_case.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MatchListView extends ConsumerWidget {
  const MatchListView({
    required this.status,
    super.key,
  });

  final MatchStatus status;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matches = ref.watch(matchesProvider(GetMatchesCommand(status: status)).select((data) => data.valueOrNull));
    return LoadingSwitcher(
      value: matches,
      margin: DistanceProvider.screenInsets.padding,
      builder: (context, data) => EmptyCaseBuilder(
        isEmpty: data.isEmpty,
        title: 'Non sono presenti partite',
        subtitle: 'Clicca sul bottone in alto a destra per aggiungere una nuova partita',
        builder: (context) => ListView.separated(
          itemCount: data.length,
          physics: const ScrollPhysics(),
          padding: DistanceProvider.screenInsets.padding,
          separatorBuilder: (context, index) => const Divider(height: DistanceProvider.hugeDistance),
          itemBuilder: (context, index) => MatchCard(match: data[index]),
        ),
      ),
    );
  }
}
