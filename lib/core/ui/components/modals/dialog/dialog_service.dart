import 'package:ariannapp/core/infrastructure/error/application_error/applicationerror.dart';
import 'package:ariannapp/navigation/key/router_key.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dialog_service.g.dart';

@Riverpod(keepAlive: true)
class DialogService extends _$DialogService {
  late BuildContext? context;

  @override
  void build() {
    context = ref.read(navigatorKeyProvider).currentContext;
  }

  Future<void> showSuccessDialog({required String message}) {
    final thisContext = context;
    if (thisContext == null) return Future.value();
    return showDialog(
      context: thisContext,
      builder: (context) => const SizedBox.shrink(),
    );
  }

  Future<void> showErrorDialog({required ApplicationError error}) {
    final thisContext = context;
    if (thisContext == null) return Future.value();
    return showDialog(
      context: thisContext,
      builder: (context) => const SizedBox.shrink(),
    );
  }

  Future<bool?> showConfirmDialog({required String message}) {
    final thisContext = context;
    if (thisContext == null) return Future.value();
    return showDialog<bool>(
      context: thisContext,
      builder: (context) => const SizedBox.shrink(),
    );
  }
}
