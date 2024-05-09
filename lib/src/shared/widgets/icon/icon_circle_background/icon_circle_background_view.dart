import 'package:flutter/material.dart';

import 'icon_circle_background_props.dart';

class IconCircleBackground extends StatelessWidget {
  const IconCircleBackground({required this.props, super.key});

  final IconCircleBackgroundProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
          color: props.isPrimaryBackground
              ? theme.colorScheme.primary
              : theme.colorScheme.secondary,
          shape: BoxShape.circle),
      child: Padding(
        padding: EdgeInsets.all(props.iconPadding),
        child: props.icon.svg(
          height: props.iconSize,
          width: props.iconSize,
          colorFilter: ColorFilter.mode(
              props.isPrimaryBackground
                  ? theme.colorScheme.onPrimary
                  : theme.colorScheme.onSecondary,
              BlendMode.srcIn),
        ),
      ),
    );
  }
}
