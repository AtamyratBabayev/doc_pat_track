import 'package:flutter/material.dart';

import 'button_props.dart';
import 'button_variant.dart';

class Button extends StatelessWidget {
  const Button({required this.props, super.key});

  final ButtonProps props;

  ButtonStyle? _getButtonStyle(ThemeData theme) {
    if (props.buttonVariant == ButtonVariant.primary) {
      return null;
    }

    if (props.buttonVariant == ButtonVariant.secondary) {
      return FilledButton.styleFrom(
          backgroundColor: theme.colorScheme.secondary,
          foregroundColor: theme.colorScheme.onSecondary);
    }

    return FilledButton.styleFrom(
        backgroundColor: theme.colorScheme.error,
        foregroundColor: theme.colorScheme.onError);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    ButtonStyle? secondaryStyle = _getButtonStyle(theme);

    return FilledButton(
      onPressed: props.onPressed,
      style: secondaryStyle?.merge(theme.filledButtonTheme.style),
      child: Text(props.title),
    );
  }
}
