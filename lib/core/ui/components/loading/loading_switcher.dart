import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/ui/components/loading/placeholders.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shimmer/shimmer.dart';

class AsyncLoadingSwitcher<T> extends StatelessWidget {
  const AsyncLoadingSwitcher({
    required this.value,
    required this.builder,
    this.margin,
    super.key,
  });

  final AsyncValue<T> value;
  final EdgeInsets? margin;
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
      child: value.when(
        data: (value) => builder(context, value),
        error: (error, _) {
          if (error is ApplicationError) {
            final message = error.whenOrNull(generic: (_, message) => message);
            return EmptyContentPlaceholder(
              title: 'Qualcosa non va..',
              subtitle: message,
            );
          }
          return _BaseShimmer(margin: margin);
        },
        loading: () => _BaseShimmer(margin: margin),
      ),
    );
  }
}

class LoadingSwitcher<T> extends StatelessWidget {
  const LoadingSwitcher({
    required this.value,
    required this.builder,
    this.margin,
    super.key,
  });

  final T? value;
  final EdgeInsets? margin;
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
      child: value == null ? _BaseShimmer(margin: margin) : builder(context, value as T),
    );
  }
}

class _BaseShimmer extends StatelessWidget {
  const _BaseShimmer({this.margin});

  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        padding: margin,
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
