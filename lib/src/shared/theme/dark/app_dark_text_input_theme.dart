import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_theme.dart';

const _borderRadius = 15.0;
const _contentPaddingHorizontal = 25.0;
const _contentPaddingVertical = 28.0;

class AppDarkTextInputTheme {
  const AppDarkTextInputTheme._();

  static final InputDecorationTheme data = InputDecorationTheme(
    filled: true,
    fillColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.error)) {
        return AppColors.redDark.withOpacity(0.3);
      }
      return AppColors.greyBlueDark;
    }),
    contentPadding: const EdgeInsets.symmetric(
        horizontal: _contentPaddingHorizontal,
        vertical: _contentPaddingVertical),
    counterStyle: const TextStyle(height: 0.0, fontSize: 0.0),
    errorStyle: const TextStyle(fontSize: 0.0),
    hintStyle: AppTextTheme.data.labelLarge
        ?.copyWith(color: AppColors.greyBlue, fontWeight: FontWeight.bold),
    labelStyle:
        AppTextTheme.data.labelLarge?.copyWith(color: AppColors.greyBlue),
    floatingLabelStyle:
        AppTextTheme.data.labelLarge?.copyWith(color: AppColors.greyBlue),
    prefixIconColor: Colors.white,
    suffixIconColor: Colors.white,
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
