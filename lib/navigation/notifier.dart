import 'package:ariannapp/core/infrastructure/authentication/authentication_state.dart';
import 'package:ariannapp/features/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final routerNotifierProvider = AutoDisposeAsyncNotifierProvider<RouterNotifier, bool>(() {
  return RouterNotifier();
});

class RouterNotifier extends AutoDisposeAsyncNotifier<bool> implements Listenable {
  VoidCallback? routerListener;

  @override
  Future<bool> build() async {
    final authState = ref.watch(authenticationStateProvider);
    ref.listenSelf((_, __) {
      if (state.isLoading) return;
      routerListener?.call();
    });
    return authState.valueOrNull != null;
  }

  String? redirect(BuildContext context, GoRouterState routerState) {
    final isAuth = state.whenOrNull(data: (data) => data);
    if (isAuth == null) return null;
    final loc = routerState.matchedLocation;
    final isInLogin = loc == LoginScreenRoute.pagePath;
    if (isAuth && isInLogin) {
      return '/home';
    }
    if (!isAuth && !isInLogin) {
      return LoginScreenRoute.pagePath;
    }
    return null;
  }

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}
