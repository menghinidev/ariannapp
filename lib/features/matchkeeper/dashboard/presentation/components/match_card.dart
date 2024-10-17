import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/presentation/components/score_card.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MatchCard extends ConsumerWidget {
  const MatchCard({
    required this.match,
    super.key,
  });

  final ApplicationMatch match;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        _MatchCardHeader(match: match),
        DistanceProvider.smallDistance.spacer(),
        ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) => DistanceProvider.smallDistance.spacer(),
          itemCount: match.scores.length,
          itemBuilder: (context, index) => ScoreCard(
            score: match.scores[index],
            match: match,
          ),
        ),
      ],
    );
  }
}

class _MatchCardHeader extends StatelessWidget {
  const _MatchCardHeader({
    required this.match,
  });

  final ApplicationMatch match;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              match.game.name,
              style: context.textTheme.headlineSmall,
            ),
            Text(
              'Iniziata il ${match.lastUpdate}',
              style: context.textTheme.bodySmall,
            ),
          ],
        ),
        DistanceProvider.smallDistance.spacer(axis: Axis.horizontal),
        IconButton.filledTonal(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
