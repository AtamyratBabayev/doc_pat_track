import 'package:flutter/material.dart';

import '../../../theme/theme.dart';
import 'button_selectable_props.dart';

const _borderRadius = 16.0;
const _paddingVertical = 13.0;
const _paddingHorizontal = 30.0;

class ButtonSelectable extends StatelessWidget {
  const ButtonSelectable({super.key, required this.props});

  final ButtonSelectableProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final borderRadius = BorderRadius.circular(_borderRadius);
    final label = props.title;
    return Material(
      borderRadius: borderRadius,
      color: props.isSelected
          ? theme.colorScheme.primary
          : theme.colorScheme.surface,
      child: InkWell(
        onTap: props.onPressed,
        borderRadius: borderRadius,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: _paddingHorizontal, vertical: _paddingVertical),
          child: Text(
            label,
            style: theme.textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: props.isSelected
                    ? theme.colorScheme.onPrimary
                    : theme.colorsExtension.onSurfaceSecondary),
          ),
        ),
      ),
    );
  }
}
