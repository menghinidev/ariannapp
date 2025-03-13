import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/core/ui/theme/theme_builder.dart';
import 'package:flutter/material.dart';

mixin SnackbarBuilder {
  SnackBar buildSuccessSnackbar(BuildContext context, {required String message}) {
    return _buildSnackbar(
      message: message,
      backgroundColor: context.colorScheme.primaryContainer,
      textColor: context.colorScheme.onPrimaryContainer,
      leading: Icon(
        Icons.check_circle_outline,
        color: context.colorScheme.onPrimaryContainer,
      ),
    );
  }

  SnackBar buildErrorSnackbar(BuildContext context, {required String message}) {
    return _buildSnackbar(
      message: message,
      backgroundColor: context.colorScheme.errorContainer,
      textColor: context.colorScheme.onErrorContainer,
      leading: Icon(
        Icons.error_outline,
        color: context.colorScheme.onErrorContainer,
      ),
    );
  }

  SnackBar _buildSnackbar({
    required String message,
    Color? backgroundColor,
    Color? textColor,
    SnackBarAction? action,
    Widget? leading,
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
        borderRadius: BorderRadius.circular(16),
        side: backgroundColor == null ? BorderSide.none : BorderSide(color: backgroundColor),
      ),
      content: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) ...[
            leading,
            DistanceProvider.smallDistance.spacer(axis: Axis.horizontal),
          ],
          Text(message, style: TextStyle(color: textColor)),
        ],
      ),
    );
  }
}
