import 'package:ariannapp/core/infrastructure/usecase/handlers/handler.dart';
import 'package:ariannapp/core/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShowSnackbarSuccessHandler<R, I> extends UseCaseSuccessHandler<R, I> with SnackbarBuilder {
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
      final _ = scaffold.showSnackBar(buildSuccessSnackbar(context, message: message));
      return Future.value();
    } catch (e) {
      return Future.value();
    }
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
