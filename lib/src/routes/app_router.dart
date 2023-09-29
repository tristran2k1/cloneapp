import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/features.dart';

import 'package:travo_app/src/models/models.dart';

enum AppRoute {
  landing,
  home,
  favourite,
  payment,
  user,
  login,
}

class XAppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static final shellKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/login',
    routes: [
      GoRoute(
          path: '/login',
          name: AppRoute.login.name,
          pageBuilder: (_, __) => const NoTransitionPage(
                child: LoginScreen(),
              ),
          routes: AuthCoordinator.router),
      ShellRoute(
        navigatorKey: shellKey,
        builder: (context, state, child) {
          return ScaffoldWithBottomNavigationBar(
              location: state.location, child: child);
        },
        routes: [
          bottomNavigationItemBuilder(HomeNavigationItems.items[0],
              routes: HomeCoordinator.router),
          bottomNavigationItemBuilder(HomeNavigationItems.items[1]),
          bottomNavigationItemBuilder(HomeNavigationItems.items[2]),
          bottomNavigationItemBuilder(HomeNavigationItems.items[3]),
        ],
      ),
    ],
  );

  static GoRoute bottomNavigationItemBuilder(HomeNavigationItem item,
          {List<RouteBase>? routes = const <RouteBase>[]}) =>
      GoRoute(
        path: item.path,
        name: item.route.name,
        pageBuilder: (_, __) {
          return NoTransitionPage(child: item.view);
        },
        routes: routes ?? [],
      );
}
