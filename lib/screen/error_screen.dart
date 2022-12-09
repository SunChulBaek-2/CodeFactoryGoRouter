import 'package:codefactory_go_router/layout/default_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({required this.error, super.key});

  final String error;

  @override
  Widget build(BuildContext context) => DefaultLayout(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(error),
        ElevatedButton(onPressed: () {
          context.go('/');
        }, child: Text('고홈'))
      ],
    )
  );
}