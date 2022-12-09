import 'package:codefactory_go_router/layout/default_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OneScreen extends StatelessWidget {
  static String get routeName => 'one';

  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Column(
        children: [
          const Text('one'),
          ElevatedButton(onPressed: () {
            context.pop();
          }, child: const Text('Pop'))
        ],
      )
    );
  }
}