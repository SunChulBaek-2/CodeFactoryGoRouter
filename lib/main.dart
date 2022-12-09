import 'package:codefactory_go_router/screen/1_screen.dart';
import 'package:codefactory_go_router/screen/2_screen.dart';
import 'package:codefactory_go_router/screen/3_screen.dart';
import 'package:codefactory_go_router/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const _App());
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  GoRouter get _router => GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: <RouteBase>[
          GoRoute(
            path: 'one',
            name: OneScreen.routeName,
            builder: (context, state) => const OneScreen(),
            routes: <RouteBase>[
              GoRoute(
                path: 'two',
                name: TwoScreen.routeName,
                builder: (context, state) => const TwoScreen(),
                routes: <RouteBase>[
                  GoRoute(
                    path: 'three',
                    name: ThreeScreen.routeName,
                    builder: (context, state) => const ThreeScreen(),
                  ),
                ]
              ),
            ]
          ),
        ]
      ),
    ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}