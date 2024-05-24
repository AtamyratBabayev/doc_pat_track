import 'package:flutter/material.dart';

import '../../../../../../../shared/shared.dart';
import 'language_button.dart';

const _borderRadius = 16.0;
const _iconSize = 24.0;
const _horizontalPadding = 20.0;
const _verticalPadding = 14.0;
const _iconRightPadding = 20.0;

class LanguageButton extends StatelessWidget {
  const LanguageButton({required this.props, super.key});

  final LanguageButtonProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final language = props.language;
    final borderRadius = BorderRadius.circular(_borderRadius);
    return Material(
      color: theme.colorScheme.surfaceBright,
      borderRadius: borderRadius,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: () => props.onPressed?.call(language),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: _horizontalPadding, vertical: _verticalPadding),
          child: Row(
            children: [
              language.flag.svg(height: _iconSize, width: _iconSize),
              const WidthSpacer(_iconRightPadding),
              Text(
                language.name,
                style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
