import 'package:ariannapp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_sheet_service.g.dart';

@riverpod
BottomSheetService bottomSheetService(Ref ref) {
  return BottomSheetService();
}

class BottomSheetService {
  Future<T?> showBottomSheet<T>(
    BuildContext context, {
    required Widget Function(BuildContext) builder,
    BoxConstraints? constraints,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      constraints: constraints,
      builder: (context) => KeyboardFocusWrapper(
        child: Padding(
          padding: DistanceProvider.screenInsets.padding.add(MediaQuery.of(context).viewInsets),
          child: builder(context),
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      showDragHandle: true,
      sheetAnimationStyle: AnimationStyle(
        curve: Curves.easeInCubic,
        duration: const Duration(milliseconds: 300),
        reverseCurve: Curves.easeOutCubic,
        reverseDuration: const Duration(milliseconds: 300),
      ),
    );
  }
}
