import 'package:flutter/material.dart';

import '../../../../generated/assets.gen.dart';

class FabProps {
  const FabProps({required this.icon, this.onPressed});

  final SvgGenImage icon;
  final VoidCallback? onPressed;
}
