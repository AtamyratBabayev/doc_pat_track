import 'package:flutter/material.dart';

import '../../../../../../../../../generated/assets.gen.dart';

class DrawerMenuItemProps {
  const DrawerMenuItemProps(
      {required this.icon,
      required this.title,
      this.onPressed,
      this.isSelected = false});

  final VoidCallback? onPressed;
  final SvgGenImage icon;
  final bool isSelected;
  final String title;
}
