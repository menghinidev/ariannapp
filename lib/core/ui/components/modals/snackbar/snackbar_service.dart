import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'snackbar_service.g.dart';

@Riverpod(keepAlive: true)
class SnackbarService extends _$SnackbarService {
  late BuildContext? context;

  @override
  void build({required BuildContext scaffoldContext}) {
    context = scaffoldContext;
    return;
  }

  void showSuccessSnackbar({required String message}) {
    final thisContext = context;
    if (thisContext == null) return;
    ScaffoldMessenger.of(thisContext).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
      ),
    );
  }
}
