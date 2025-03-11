import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:flutter/material.dart';

mixin SnackbarBuilder {
  SnackBar buildSuccessSnackbar(BuildContext context, {required String message}) {
    return _buildSnackbar(message: message);
  }

  SnackBar buildErrorSnackbar(BuildContext context, {required String message}) {
    return _buildSnackbar(
      message: message,
      backgroundColor: Theme.of(context).colorScheme.errorContainer,
      textColor: Theme.of(context).colorScheme.onErrorContainer,
    );
  }

  SnackBar _buildSnackbar({
    required String message,
    Color? backgroundColor,
    Color? textColor,
    SnackBarAction? action,
  }) {
    return SnackBar(
      duration: const Duration(seconds: 2),
      showCloseIcon: true,
      margin: DistanceProvider.screenInsets.padding,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      backgroundColor: backgroundColor,
      action: action,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: backgroundColor == null ? BorderSide.none : BorderSide(color: backgroundColor),
      ),
      content: Text(message, style: TextStyle(color: textColor)),
    );
  }
}
