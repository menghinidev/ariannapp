import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreenRoute extends GoRoute {
  HomeScreenRoute(List<GoRoute> addictionalRoutes)
      : super(
          path: pagePath,
          routes: addictionalRoutes,
          builder: (context, state) => const SizedBox.shrink(),
        );

  static const pagePath = '/home';
}
