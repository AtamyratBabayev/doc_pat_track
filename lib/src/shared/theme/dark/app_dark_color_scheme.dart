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
        background: AppColors.blueGreyDark,
        onBackground: Colors.white,
        surface: AppColors.blueJay,
        onSurface: Colors.white);
  }
}
