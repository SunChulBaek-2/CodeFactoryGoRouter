import 'package:codefactory_go_router/layout/default_layout.dart';
import 'package:codefactory_go_router/screen/1_screen.dart';
import 'package:codefactory_go_router/screen/2_screen.dart';
import 'package:codefactory_go_router/screen/3_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              onPressed: () {
                context.goNamed(OneScreen.routeName);
              },
              child: Text('Screen One (GO)')
          ),
          ElevatedButton(
              onPressed: () {
                context.goNamed(TwoScreen.routeName);
              },
              child: Text('Screen Two (GO)')
          ),
          ElevatedButton(
              onPressed: () {
                context.go('/error');
              },
              child: Text('Error Screen (GO)')
          ),
        ],
      )
    );
  }
}