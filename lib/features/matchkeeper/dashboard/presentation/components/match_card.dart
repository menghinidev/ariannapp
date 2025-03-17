import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/presentation/components/score_card/score_card.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/presentation/matchkeeper_dashboard_screen.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/usecase/edit_score/command/edit_score_command.dart';
import 'package:ariannapp/features/matchkeeper/dashboard/usecase/edit_score/edit_score_use_case.dart';
import 'package:ariannapp/features/matchkeeper/new_match/features/restart_match/presentation/restart_match_button.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';
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
        _MatchCardScores(match: match),
        if (match.status == MatchStatus.ongoing) ...[
          DistanceProvider.smallDistance.spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: _MatchCardActions(match: match),
          ),
        ],
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
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                match.game.name,
                style: context.textTheme.headlineSmall,
              ),
              Text(
                'Iniziata il ${match.lastUpdate.toExtendedDate}',
                style: context.textTheme.bodySmall,
              ),
            ],
          ),
        ),
        if (match.status == MatchStatus.completed) ...[
          DistanceProvider.smallDistance.spacer(axis: Axis.horizontal),
          RestartMatchIconButton(
            match: match,
            onCompleted: () {
              final dashboardController = IhneritedDashboard.of(context);
              if (dashboardController != null) dashboardController.switchTab(0);
            },
          ),
        ],
      ],
    );
  }
}

class _MatchCardScores extends ConsumerWidget {
  const _MatchCardScores({
    required this.match,
  });

  final ApplicationMatch match;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        for (final score in match.scores) ...[
          ScoreCard(
            score: score,
            match: match,
          ),
          DistanceProvider.smallDistance.spacer(),
        ],
      ],
    );
  }
}

class _MatchCardActions extends ConsumerWidget {
  const _MatchCardActions({
    required this.match,
  });

  final ApplicationMatch match;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton.icon(
      label: const Text('Registra turno'),
      onPressed: () async {
        final scores = <Score>[];
        for (final score in match.scores) {
          final points = score.points;
          final newPoint = ref.read(scoreModificationProvider(score));
          final newValue = score.copyWith(points: [...points, newPoint]);
          scores.add(newValue);
        }
        final command = EditScoreCommand(match: match, newScores: scores, context: context);
        await ref.read(editScoreUseCaseProvider).execute(command);
      },
    );
  }
}
