import 'package:codefactory_go_router/layout/default_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TwoScreen extends StatelessWidget {
  static String get routeName => 'two';

  const TwoScreen({super.key});

  @override
  Widget build(BuildContext context) => DefaultLayout(
    body: Column(
      children: [
        const Text('two'),
        ElevatedButton(onPressed: () {
          context.pop();
        }, child: const Text('Pop'))
      ],
    )
  );
}