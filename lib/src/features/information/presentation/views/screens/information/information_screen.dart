import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ColoredBox(
      color: theme.colorScheme.background,
      child: const Center(
        child: Text('Information screen'),
      ),
    );
  }
}
