part of 'score_card.dart';

class _ScoreCardHeader extends StatelessWidget {
  const _ScoreCardHeader({
    required this.score,
    required this.match,
  });

  final Score score;
  final ApplicationMatch match;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              const CircleAvatar(child: Text('N/D')),
              DistanceProvider.smallDistance.spacer(axis: Axis.horizontal),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    score.team.playersFormatted,
                    style: context.textTheme.titleMedium,
                  ),
                  Text('#${match.scores.indexOf(score) + 1}'),
                ],
              ),
            ],
          ),
        ),
        Text(
          '${score.points.reduce((a, b) => a + b)}',
          style: context.textTheme.headlineSmall,
        ),
      ],
    );
  }
}
