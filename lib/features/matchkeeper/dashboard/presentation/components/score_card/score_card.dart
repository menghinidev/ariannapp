import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

/* Components */

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

class _ScorePointsSummary extends StatelessWidget {
  const _ScorePointsSummary({
    required this.score,
  });

  final Score score;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: DistanceProvider.smallDistance,
      children: [
        for (final point in score.points.sublist(0, score.points.length - 1))
          Text(
            '$point',
            style: context.textTheme.bodyLarge?.copyWith(decoration: TextDecoration.lineThrough),
          ),
        Text(
          '${score.points.last}',
          style: context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class _ScoreActionsBar extends ConsumerStatefulWidget {
  const _ScoreActionsBar({
    required this.score,
  });

  final Score score;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __ScoreActionsBarState();
}

class __ScoreActionsBarState extends ConsumerState<_ScoreActionsBar> {
  late final FixedExtentScrollController _scrollController;

  static const itemHeight = 48.0;
  static const quickNumbers = 100;

  @override
  void initState() {
    super.initState();
    _scrollController = FixedExtentScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _ = ref.watch(scoreModificationProvider(widget.score));
    return Container(
      constraints: const BoxConstraints(maxHeight: itemHeight, maxWidth: 36),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(12),
        border: const Border.fromBorderSide(BorderSide.none),
      ),
      child: ListWheelScrollView.useDelegate(
        itemExtent: itemHeight,
        controller: _scrollController,
        key: ValueKey(widget.score),
        onSelectedItemChanged: (value) => ref.read(scoreModificationProvider(widget.score).notifier).points = value,
        physics: const PageScrollPhysics(),
        childDelegate: ListWheelChildListDelegate(
          children: [
            for (var index = 0; index < quickNumbers; index++)
              Container(
                height: itemHeight,
                alignment: Alignment.center,
                child: Text(
                  '$index',
                  textAlign: TextAlign.center,
                  style: context.textTheme.titleLarge?.copyWith(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
