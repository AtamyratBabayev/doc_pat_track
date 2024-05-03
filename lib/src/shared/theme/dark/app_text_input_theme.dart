import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_theme.dart';

const _borderRadius = 20.0;

class AppLightTextInputTheme {
  const AppLightTextInputTheme._();

  static final InputDecorationTheme data = InputDecorationTheme(
    filled: true,
    fillColor: AppColors.greyBlueDark,
    counterStyle: const TextStyle(height: 0.0, fontSize: 0.0),
    errorStyle: AppTextTheme.data.labelMedium?.copyWith(color: AppColors.red),
    hintStyle:
        AppTextTheme.data.titleMedium?.copyWith(color: AppColors.blueJay),
    labelStyle:
        AppTextTheme.data.titleMedium?.copyWith(color: AppColors.blueJay),
    floatingLabelStyle:
        AppTextTheme.data.titleMedium?.copyWith(color: AppColors.blueJay),
    prefixStyle: AppTextTheme.data.titleMedium?.copyWith(color: Colors.white),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide.none),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide.none),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide.none),
    disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide.none),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide.none),
  );
}
