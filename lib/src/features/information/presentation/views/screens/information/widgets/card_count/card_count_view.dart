import 'package:flutter/material.dart';

import '../../../../../../../../shared/shared.dart';
import 'card_count.dart';
import 'icon_circle_background/icon_circle_background.dart';

const _borderRadius = 20.0;
const _iconBottomPadding = 15.0;
const _padding = 20.0;

class CardCount extends StatelessWidget {
  const CardCount({required this.props, super.key});

  final CardCountProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(_padding),
        child: Column(
          children: [
            IconCircleBackground(
              props: IconCircleBackgroundProps(icon: props.icon),
            ),
            const HeightSpacer(_iconBottomPadding),
            Text(
              '${props.count}',
              style: theme.textTheme.headlineLarge
                  ?.copyWith(color: theme.colorScheme.onSurface),
            ),
            Text(
              props.subtitle,
              style: theme.textTheme.labelMedium
                  ?.copyWith(color: theme.colorsExtension.onSurfaceSecondary),
            )
          ],
        ),
      ),
    );
  }
}
