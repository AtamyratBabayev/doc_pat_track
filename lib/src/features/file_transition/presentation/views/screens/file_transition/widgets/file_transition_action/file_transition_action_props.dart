import 'package:flutter/material.dart';

import '../../../../../../../../../generated/assets.gen.dart';

class FileTransitionActionProps {
  const FileTransitionActionProps(
      {this.onPressed,
      required this.icon,
      required this.title,
      required this.subtitle,
      this.isPrimaryIconBackground = true});

  final VoidCallback? onPressed;
  final SvgGenImage icon;
  final String title;
  final String subtitle;
  final bool isPrimaryIconBackground;
}
