import 'package:ariannapp/core/navigation/router_key.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dialog_service.g.dart';

@riverpod
class DiaologService extends _$DiaologService {
  late BuildContext? context;

  @override
  void build() {
    context = ref.read(navigatorKeyProvider).currentContext;
  }

  Future<void> showSuccessDialog({required String title}) {
    final thisContext = context;
    if (thisContext == null) return Future.value();
    return showDialog(
      context: thisContext,
      builder: (context) => const SizedBox.shrink(),
    );
  }
}
