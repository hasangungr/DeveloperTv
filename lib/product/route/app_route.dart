import 'package:developer_tv/core/string_extension.dart';
import 'package:developer_tv/view/auth/auth_view.dart';
import 'package:developer_tv/view/discover/discover_view.dart';
import 'package:developer_tv/view/my_videos/my_videos_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../view/home/home_view.dart';
import '../../view/splash/splash_view.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      name: AppRoutes.auth,
      path: AppRoutes.auth.viewName,
      builder: (context, state) => const AuthView(),
    ),
    GoRoute(
      name: AppRoutes.home,
      path: AppRoutes.home.viewName,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      name: AppRoutes.discover,
      path: AppRoutes.discover.viewName,
      builder: (context, state) => const DiscoverView(),
    ),
    GoRoute(
      name: AppRoutes.myVideos,
      path: AppRoutes.myVideos.viewName,
      builder: (context, state) => const MyVideosView(),
    ),
  ],
);

@immutable
sealed class AppRoutes {
  static const String splash = '/';
  static const String home = 'home';
  static const String auth = 'auth';
  static const String discover = 'discover';
  static const String myVideos = 'myVideos';
}
