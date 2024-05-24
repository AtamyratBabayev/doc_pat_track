import 'package:flutter/material.dart';

import '../app_colors.dart';

class AppDarkColorScheme {
  AppDarkColorScheme._();

  static ColorScheme get data {
    return const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.blue,
        onPrimary: Colors.white,
        secondary: AppColors.orange,
        onSecondary: Colors.white,
        error: AppColors.red,
        onError: Colors.white,
        errorContainer: AppColors.redDark,
        onErrorContainer: Colors.white,
        surface: AppColors.blueGreyDark,
        onSurface: Colors.white,
        onSurfaceVariant: AppColors.blueKoi,
        surfaceBright: AppColors.blueJay);
  }
}
