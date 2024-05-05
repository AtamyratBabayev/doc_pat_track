import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class InitialLanguageScreen extends StatelessWidget {
  const InitialLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Initial language screen!'),
      ),
    );
  }
}
