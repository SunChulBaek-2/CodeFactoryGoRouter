import 'package:codefactory_go_router/layout/default_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                context.go('/one');
              },
              child: Text('Screen One (GO)')
          ),
        ],
      )
    );
  }
}