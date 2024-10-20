part of 'score_card.dart';

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
        key: ValueKey(widget.score.points),
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
