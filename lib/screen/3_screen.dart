import 'package:codefactory_go_router/layout/default_layout.dart';
import 'package:flutter/material.dart';

class ThreeScreen extends StatelessWidget {
  static String get routeName => 'three';

  const ThreeScreen({super.key});

  @override
  Widget build(BuildContext context) => DefaultLayout(
    body: Column(
      children: [
        Text('three')
      ],
    )
  );
}