import 'package:flutter/material.dart';

import '../../../../../generated/assets.gen.dart';

const _iconSize = 18.0;
const _shapeSize = 48.0;

class ButtonCircleIconProps {
  const ButtonCircleIconProps(
      {required this.icon,
      this.shapeColor,
      this.iconSize = _iconSize,
      this.shapeSize = _shapeSize,
      this.iconColor,
      this.onPressed});

  final SvgGenImage icon;
  final Color? shapeColor;
  final Color? iconColor;
  final double iconSize;
  final double shapeSize;
  final VoidCallback? onPressed;
}
