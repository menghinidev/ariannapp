import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension RouterNavigator on BuildContext {
  ///
  /// Navigates to the specified [location] with the given [queryParams] and [extra] data
  /// <br>
  /// The navigation is relative from the current location, which means that if the current location
  /// is /home and the specified [location] is 'first-page',
  /// the navigation will be to /home/first-page
  ///
  void goRelative(
    String location, {
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) {
    final relative = _findRelative(location, queryParams: queryParams);
    go(relative.toString(), extra: extra);
  }

  ///
  /// Replace the current route with the specified [location] and [queryParams]
  /// <br>
  /// <b>ATTENTION</b>:
  /// This will replace the current route with the new one, so it should be used carefully
  /// and ONLY after at least a push as been made.
  /// <br>
  /// It might interfere with the usage you are making of the 'go' navigation
  ///
  void replaceRelative(
    String location, {
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) {
    final relative = _findRelative(location, queryParams: queryParams);
    replace(relative.toString(), extra: extra);
  }

  ///
  /// Pushes the specified [location] with the given [queryParams] and [extra] data
  /// <br>
  /// The navigation is relative from the current location, which means that if the current location
  /// is /home and the specified [location] is 'first-page',
  /// the navigation will be to /home/first-page
  ///
  Future<T?> pushRelative<T>(
    String location, {
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) {
    final relative = _findRelative(location, queryParams: queryParams);
    return push(relative.toString(), extra: extra);
  }

  Uri? _findRelative(
    String location, {
    Map<String, dynamic> queryParams = const <String, dynamic>{},
  }) {
    final currentUrl = currentUri;
    final mergedQueryParameters = {
      ...currentUrl.queryParameters,
      ...queryParams,
    };
    final newPath = currentUrl.path == '/' ? '/$location' : '${currentUrl.path}/$location';
    final newUrl = currentUrl.replace(
      path: newPath,
      queryParameters: mergedQueryParameters,
    );
    return newUrl;
  }

  ///
  /// Goes back in the path until the location is found
  /// Example: We are currently at home/first-page/second-page/third-page and we want to navigate to home/first-page
  /// <br>
  /// Specifing [location] as 'first-page' will result in the following navigation:
  /// - FROM    /home/first-page/second-page/third-page
  /// - TO      /home/first-page
  ///
  void goBackTo(String location, {Object? extra}) {
    final currentUrl = currentUri;
    final backToSegments = currentUrl.pathSegments.takeWhile((value) => value != location).toList();
    final newSegments = [...backToSegments, location];
    final newUri = currentUrl.replace(pathSegments: newSegments);
    go('/$newUri', extra: extra);
  }

  ///
  /// This should go back until the path matches with [backTo] and then proceed the navigation to location
  ///
  /// Example: We are currently at /sepa/summary and we want to navigate to /sepa/outcome
  /// Specifing [backTo] as 'sepa' and [forth] to 'outcome' will result in the following navigation:
  /// - FROM    /sepa/summary
  /// - TO      /sepa/outcome
  ///
  ///
  /// The same result can be achieved by using [goBackSinceAndForth] with 'backSince' as 'summary' and [forth] as 'outcome'
  void goBackToAndForth(String backTo, String forth, {Object? extra}) {
    final currentUrl = currentUri;
    final backToSegments = currentUrl.pathSegments.takeWhile((value) => value != backTo).toList();
    final newSegments = [...backToSegments, backTo, forth];
    final newUri = currentUrl.replace(pathSegments: newSegments);
    go('/$newUri', extra: extra);
  }

  void goBackSinceAndForth(
    String backSince, {
    String? forth,
    Object? extra,
    Map<String, dynamic> queryParams = const <String, dynamic>{},
  }) {
    final currentUrl = currentUri;
    final backSinceSegments = currentUrl.pathSegments.takeWhile((value) => value != backSince).toList();
    final newSegments = [...backSinceSegments, if (forth != null) forth];
    final newUri = currentUrl.replace(
      pathSegments: newSegments,
      queryParameters: queryParams,
    );
    go('/$newUri', extra: extra);
  }

  void goToSibling(
    String location, {
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
  }) {
    final sibling = _findSibling(location, queryParameters: queryParameters);
    if (sibling == null) return;
    go('/$sibling', extra: extra);
  }

  void pushToSibling(
    String location, {
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
  }) {
    final sibling = _findSibling(location, queryParameters: queryParameters);
    if (sibling == null) return;
    push('/$sibling', extra: extra);
  }

  Uri? _findSibling(
    String location, {
    Map<String, String> queryParameters = const <String, String>{},
  }) {
    final currentUrl = currentUri;
    if (currentUrl.pathSegments.isEmpty) return null;
    final segments = [...currentUrl.pathSegments]..removeLast();
    final newSegments = [...segments, location];
    final newUri = currentUrl.replace(
      pathSegments: newSegments,
      queryParameters: queryParameters,
    );
    return newUri;
  }
}

extension SafeRouteRedirect on GoRouterState {
  /// Checks if the current route has an extra and if not,
  /// it will redirect a new location.
  ///
  /// It should be used in public routes where the extra data is mandatory
  /// and cannot pop if the web page gets refreshed
  ///
  /// [T] is the type of the extra data that should be present<br>
  /// [route] should be the same route that is currently active<br>
  /// [redirect] is the location where the navigation should be redirected
  ///
  String? checkExtraPresenceOrRedirect<T>({
    required String route,
    required String redirect,
  }) {
    if (uri.pathSegments.isEmpty) return redirect;
    if (uri.pathSegments.last != route) return null;
    final isExactType = extra is T;
    if (extra == null || !isExactType) {
      return redirect;
    }
    return null;
  }

  String? checkExtraPresenceOrPop<T extends Object?>({
    required String route,
    Map<String, dynamic> queryParams = const <String, dynamic>{},
  }) {
    if (uri.pathSegments.last != route) return null;
    final isExactType = extra is T;
    if (extra == null || !isExactType) {
      final backSinceSegments = uri.pathSegments.takeWhile((value) => value != route).toList();
      final newSegments = [...backSinceSegments];
      final newUri = uri.replace(pathSegments: newSegments, queryParameters: queryParams);
      return '/$newUri';
    }
    return null;
  }
}

extension WhereAreYou on BuildContext {
  Uri get currentUri {
    try {
      final router = GoRouter.of(this);
      return router.location;
    } catch (e) {
      log(e.toString());
      return Uri.parse('/');
    }
  }
}

extension GoRouterLocation on GoRouter {
  Uri get location {
    final lastMatch = routerDelegate.currentConfiguration.last;
    final matchList = lastMatch is ImperativeRouteMatch ? lastMatch.matches : routerDelegate.currentConfiguration;
    return matchList.uri;
  }
}

extension StringUrlUtils on String {
  String removeSlashIfFirstCharacter() {
    if (isNotEmpty && this[0] == '/') {
      return substring(1);
    }
    return this;
  }
}
