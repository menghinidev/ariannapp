import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'actions.dart';
part 'header.dart';

final scoreModificationProvider = StateNotifierProvider.family<ScoreModificationNotifier, int, Score>((ref, score) {
  return ScoreModificationNotifier();
});

class ScoreModificationNotifier extends StateNotifier<int> {
  ScoreModificationNotifier() : super(0);

  set points(int points) => state = points;

  int get points => state;
}

class ScoreCard extends ConsumerWidget {
  const ScoreCard({
    required this.score,
    required this.match,
    super.key,
  });

  final Score score;
  final ApplicationMatch match;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: DistanceProvider.cardInsets.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _ScoreCardHeader(match: match, score: score),
            if (match.status == MatchStatus.ongoing) ...[
              const Divider(),
              Row(
                children: [
                  Expanded(child: _ScorePointsSummary(score: score)),
                  _ScoreActionsBar(score: score),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
