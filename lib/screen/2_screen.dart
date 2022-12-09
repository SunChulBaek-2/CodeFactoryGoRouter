import 'package:codefactory_go_router/layout/default_layout.dart';
import 'package:flutter/material.dart';

class TwoScreen extends StatelessWidget {
  static String get routeName => 'two';

  const TwoScreen({super.key});

  @override
  Widget build(BuildContext context) => DefaultLayout(
    body: Column(
      children: [
        Text('two')
      ],
    )
  );
}