import 'package:ariannapp/core/ui/layout/layout_provider.dart';
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

mixin SnackbarBuilder {
  SnackBar buildSnackbar({required String message}) {
    return SnackBar(
      duration: const Duration(seconds: 2),
      showCloseIcon: true,
      margin: DistanceProvider.screenInsets.padding,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      content: Text(message),
    );
  }
}
