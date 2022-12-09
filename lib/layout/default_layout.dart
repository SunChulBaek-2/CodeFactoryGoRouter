import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    required this.body,
    Key? key
  }) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final router  = GoRouter.of(context);
    return Scaffold(
     appBar: AppBar(title: Text(router.location)),
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 16),
       child: body,
     ),
    );
  }
}