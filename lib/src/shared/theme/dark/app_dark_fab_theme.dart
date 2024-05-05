import 'package:flutter/material.dart';

import '../../shared.dart';

const _borderRadius = 16.0;
const _iconSize = 28.0;

class AppDarkFabTheme {
  const AppDarkFabTheme._();

  static FloatingActionButtonThemeData data = FloatingActionButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
      iconSize: _iconSize,
      backgroundColor: AppColors.orange,
      foregroundColor: Colors.white);
}
