
import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    required this.body,
    Key? key
  }) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('test')),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: body,
    ),
  );
}