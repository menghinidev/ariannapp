import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/match/match.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/score/score.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

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
            const Divider(),
            Row(
              children: [
                Expanded(child: _ScorePointsSummary(score: score)),
                const _ScoreActionsBar(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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
          style: context.textTheme.titleLarge,
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
        for (final point in score.points)
          Text(
            '$point',
            style: context.textTheme.bodyLarge?.copyWith(
              decoration: score.points.last == point ? null : TextDecoration.lineThrough,
            ),
          ),
      ],
    );
  }
}

class _ScoreActionsBar extends ConsumerStatefulWidget {
  const _ScoreActionsBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __ScoreActionsBarState();
}

class __ScoreActionsBarState extends ConsumerState<_ScoreActionsBar> {
  late final ItemScrollController itemScrollController;
  late final ItemPositionsListener itemPositionsListener;

  @override
  void initState() {
    super.initState();
    itemScrollController = ItemScrollController();
    itemPositionsListener = ItemPositionsListener.create();
    itemPositionsListener.itemPositions.addListener(() {
      final positions = itemPositionsListener.itemPositions.value;
      if (positions.isNotEmpty) {
        final firstIndex = positions.first.index;
        final lastIndex = positions.last.index;
        print('First index: $firstIndex, Last index: $lastIndex');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton.filled(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
        DistanceProvider.smallDistance.spacer(axis: Axis.horizontal),
        IconButton.filled(
          onPressed: () {},
          icon: const Icon(Icons.remove),
        ),
        DistanceProvider.smallDistance.spacer(axis: Axis.horizontal),
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 48, maxWidth: 36),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(12),
              border: const Border.fromBorderSide(BorderSide.none),
            ),
            child: ScrollablePositionedList.builder(
              itemCount: 100,
              initialScrollIndex: 0,
              physics: const PageScrollPhysics(),
              itemBuilder: (context, index) => Container(
                height: 48,
                alignment: Alignment.center,
                child: Text(
                  '${index + 1}',
                  textAlign: TextAlign.center,
                  style: context.textTheme.titleLarge?.copyWith(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
              itemScrollController: itemScrollController,
              itemPositionsListener: itemPositionsListener,
            ),
          ),
        ),
      ],
    );
  }
}
