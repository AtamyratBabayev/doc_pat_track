import 'package:flutter/material.dart';

import 'button_props.dart';
import 'button_variant.dart';

class Button extends StatelessWidget {
  const Button({required this.props, super.key});

  final ButtonProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    ButtonStyle? secondaryStyle;
    if (props.buttonVariant == ButtonVariant.secondary) {
      secondaryStyle = FilledButton.styleFrom(
          backgroundColor: theme.colorScheme.secondary,
          foregroundColor: theme.colorScheme.onSecondary);
    }

    return FilledButton(
      onPressed: props.onPressed,
      style: secondaryStyle?.merge(theme.filledButtonTheme.style),
      child: Text(props.title),
    );
  }
}
