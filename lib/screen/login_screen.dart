
import 'package:codefactory_go_router/layout/default_layout.dart';
import 'package:codefactory_go_router/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => DefaultLayout(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {
            ref.read(userProvider.notifier).login(name: 'Code Factory');
          },
          child: const Text('Login'))
      ],
    )
  );
}