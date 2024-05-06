import 'package:flutter/material.dart';

import 'icon_circle_background_props.dart';

const _iconSize = 48.0;
const _iconPadding = 20.0;

class IconCircleBackground extends StatelessWidget {
  const IconCircleBackground({required this.props, super.key});

  final IconCircleBackgroundProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
          color: theme.colorScheme.primary, shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(_iconPadding),
        child: props.icon.svg(
          height: _iconSize,
          width: _iconSize,
          colorFilter:
              ColorFilter.mode(theme.colorScheme.onPrimary, BlendMode.srcIn),
        ),
      ),
    );
  }
}
