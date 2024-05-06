import 'package:flutter/material.dart';

import '../../../../../../../../../shared/shared.dart';
import 'name_circle_background_props.dart';

const _iconPadding = 20.0;

class NameCircleBackground extends StatelessWidget {
  const NameCircleBackground({required this.props, super.key});

  final NameCircleBackgroundProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
          color: props.isPrimaryBackgroundColor
              ? theme.colorScheme.primary
              : theme.colorScheme.secondary,
          shape: BoxShape.circle),
      child: Padding(
          padding: const EdgeInsets.all(_iconPadding),
          child: Text(
            AppAbbreviationFetcher.from(props.fullname),
            style: theme.textTheme.labelMedium?.copyWith(
              color: props.isPrimaryBackgroundColor
                  ? theme.colorScheme.onPrimary
                  : theme.colorScheme.onSecondary,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
