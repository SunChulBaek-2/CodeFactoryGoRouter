import 'package:codefactory_go_router/layout/default_layout.dart';
import 'package:flutter/material.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Column(
        children: [
          Text('one')
        ],
      )
    );
  }
}