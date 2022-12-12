import 'dart:async';

import 'package:codefactory_go_router/model/user_model.dart';
import 'package:codefactory_go_router/screen/1_screen.dart';
import 'package:codefactory_go_router/screen/2_screen.dart';
import 'package:codefactory_go_router/screen/3_screen.dart';
import 'package:codefactory_go_router/screen/error_screen.dart';
import 'package:codefactory_go_router/screen/home_screen.dart';
import 'package:codefactory_go_router/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authStateProvider = AuthNotifier(ref: ref);

  return GoRouter(
    initialLocation: '/',
    errorBuilder: (context, state) => ErrorScreen(error: state.error.toString()),
    // redirect
    redirect: authStateProvider._redirectLogic,
    // refresh
    refreshListenable: authStateProvider,
    routes: authStateProvider._routes,
  );
});

class AuthNotifier extends ChangeNotifier {
  final Ref ref;

  AuthNotifier({ required this.ref }) {
    ref.listen<UserModel?>(userProvider, (previous, next) {
      if (previous != next) {
        notifyListeners();
      }
    });
  }

  FutureOr<String?> _redirectLogic(BuildContext context, GoRouterState state) async {
    final user = ref.read(userProvider);
    final loggingIn = state.location == '/login';

    if (user == null) {
      return loggingIn ? null : '/login';
    }
    if (loggingIn) {
      return '/';
    }
    return null;
  }

  List<RouteBase> get _routes => [
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
    GoRoute(path: '/login', builder: (_, state) => LoginScreen())
  ];
}

final userProvider = StateNotifierProvider<UserStateNotifier, UserModel?>((ref) => UserStateNotifier());

class UserStateNotifier extends StateNotifier<UserModel?> {
  UserStateNotifier(): super(null);

  login({
    required String name,
  }) {
    state = UserModel(name: name);
  }

  logout() {
    state = null;
  }
}