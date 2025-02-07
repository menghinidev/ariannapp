import 'package:ariannapp/core/ui/components/loading/placeholders.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingSwitcher<T> extends StatelessWidget {
  const LoadingSwitcher({
    required this.value,
    required this.builder,
    super.key,
  });

  final T? value;
  final Widget Function(BuildContext context, T value) builder;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      switchInCurve: Curves.easeInCubic,
      switchOutCurve: Curves.easeOutCubic,
      layoutBuilder: (currentChild, previousChildren) => Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          if (currentChild != null) currentChild,
          ...previousChildren,
        ],
      ),
      transitionBuilder: (child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      child: value == null ? const _BaseShimmer() : builder(context, value as T),
    );
  }
}

class _BaseShimmer extends StatelessWidget {
  const _BaseShimmer();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BannerPlaceholder(),
            DistanceProvider.mediumDistance.spacer(),
            const TitlePlaceholder(width: double.infinity),
            /* SizedBox(height: 16),
            ContentPlaceholder(
              lineType: ContentLineType.threeLines,
            ),
            SizedBox(height: 16),
            TitlePlaceholder(width: 200),
            SizedBox(height: 16),
            ContentPlaceholder(
              lineType: ContentLineType.twoLines,
            ),
            SizedBox(height: 16),
            TitlePlaceholder(width: 200),
            SizedBox(height: 16),
            ContentPlaceholder(
              lineType: ContentLineType.twoLines,
            ), */
          ],
        ),
      ),
    );
  }
}
