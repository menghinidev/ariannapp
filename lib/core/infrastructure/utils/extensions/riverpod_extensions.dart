import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shimmer/shimmer.dart';

extension AsyncDataBuilder<X> on AsyncValue<X> {
  Widget loadUntil({required Widget Function(X data) onLoaded}) {
    return maybeWhen(orElse: _LoadingComponent.new, data: onLoaded);
  }
}

class _LoadingComponent extends StatelessWidget {
  const _LoadingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 100,
      child: Shimmer.fromColors(
        baseColor: Colors.red,
        highlightColor: Colors.yellow,
        child: const Text(
          'Shimmer',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
