import 'package:flutter/material.dart';

import '../../../../../../../../src.dart';
import 'info_card_props.dart';

const _borderRadius = 20.0;
const _padding = 20.0;
const _iconRightPadding = 10.0;
const _iconSize = 20.0;
const _titleBottomPadding = 12.0;

class InfoCard extends StatelessWidget {
  const InfoCard({required this.props, super.key});

  final InfoCardProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      borderRadius: BorderRadius.circular(_borderRadius),
      color: theme.colorScheme.surfaceBright,
      child: Padding(
        padding: const EdgeInsets.all(_padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                props.icon.svg(
                  height: _iconSize,
                  width: _iconSize,
                  colorFilter: ColorFilter.mode(
                      theme.colorScheme.onSurfaceVariant, BlendMode.srcIn),
                ),
                const WidthSpacer(_iconRightPadding),
                Text(
                  props.title,
                  style: theme.textTheme.titleSmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const HeightSpacer(_titleBottomPadding),
            Text(
              props.subtitle,
              style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
