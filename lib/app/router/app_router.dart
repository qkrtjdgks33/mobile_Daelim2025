import 'package:daelim_2025/app/router/app_route.dart';
import 'package:daelim_2025/presentation/main/main_screen.dart';
import 'package:daelim_2025/presentation/start/start_screen.dart';
import 'package:go_router/go_router.dart';
//import 'package:flutter/cupertino.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: AppRoute.start.toPath,
  routes: [
    GoRoute(
      path: AppRoute.start.toPath,
      builder: (context, state) => Startscreen(),
    ), //GoRoute
    GoRoute(path: '/main', builder: (context, state) => MainScreen()),
  ],
);
