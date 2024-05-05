import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FileTransitionScreen extends StatelessWidget {
  const FileTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ColoredBox(
      color: theme.colorScheme.background,
      child: const Center(
        child: Text('File transition screen'),
      ),
    );
  }
}
