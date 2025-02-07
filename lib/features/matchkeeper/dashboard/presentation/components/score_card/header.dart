part of 'score_card.dart';

class _ScoreCardHeader extends ConsumerWidget {
  const _ScoreCardHeader({
    required this.score,
    required this.match,
  });

  final Score score;
  final ApplicationMatch match;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final players = ref.watch(teamPlayersProvider(score.team).select((e) => e.valueOrNull));
    return LoadingSwitcher(
      value: players,
      builder: (context, data) => Row(
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
                      data.playersFormatter,
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
      ),
    );
  }
}
