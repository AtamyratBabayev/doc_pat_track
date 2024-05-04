import 'package:flutter/material.dart';

import 'fab_props.dart';

class Fab extends StatelessWidget {
  const Fab({required this.props, super.key});
  final FabProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconSize = theme.floatingActionButtonTheme.iconSize!;
    return FloatingActionButton(
      onPressed: props.onPressed,
      child: props.icon.svg(
        height: iconSize,
        width: iconSize,
        colorFilter: ColorFilter.mode(
            theme.floatingActionButtonTheme.foregroundColor!, BlendMode.srcIn),
      ),
    );
  }
}
