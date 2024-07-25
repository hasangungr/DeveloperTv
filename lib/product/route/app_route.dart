import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../view/splash/splash_view.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashView(),
    ),
  ],
);

@immutable
sealed class AppRoutes {
  static const String splash = '/';
}
