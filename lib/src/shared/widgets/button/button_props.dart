import 'package:flutter/material.dart';

import 'button_variant.dart';

class ButtonProps {
  const ButtonProps(
      {required this.title,
      this.onPressed,
      this.buttonVariant = ButtonVariant.primary});
  final String title;
  final VoidCallback? onPressed;
  final ButtonVariant buttonVariant;
}
