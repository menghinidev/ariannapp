import 'package:ariannapp/core/infrastructure/usecase/handlers/handler.dart';
import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShowSnackbarSuccessHandler<R, I> extends UseCaseSuccessHandler<R, I> {
  ShowSnackbarSuccessHandler({
    required this.message,
    required this.contextProvider,
  });

  final String message;
  final BuildContext Function(I input) contextProvider;

  @override
  Future<void> handle(R? payload, I input) {
    try {
      final context = contextProvider(input);
      final scaffold = ScaffoldMessenger.of(context);
      final _ = scaffold.showSnackBar(_snackBar);
      return Future.value();
    } catch (e) {
      return Future.value();
    }
  }

  SnackBar get _snackBar {
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

class InvalidateProviderOnSuccessHandler<R, I> extends UseCaseSuccessHandler<R, I> {
  InvalidateProviderOnSuccessHandler({
    required this.ref,
    required this.provider,
  });

  final Ref<Object?> ref;
  final ProviderOrFamily provider;

  @override
  Future<void> handle(R? payload, I input) {
    ref.invalidate(provider);
    return Future.value();
  }
}
