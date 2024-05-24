import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_theme.dart';

const _borderRadius = 15.0;
const _horizontalPadding = 20.0;
const _verticalPadding = 25.0;

class AppDarkButtonTheme {
  const AppDarkButtonTheme._();

  static final FilledButtonThemeData data = FilledButtonThemeData(
    style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return AppColors.greyBlueDark;
          }
          return AppColors.blue;
        }),
        foregroundColor:
            WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return AppColors.greyBlue;
          }
          return Colors.white;
        }),
        textStyle: WidgetStatePropertyAll(AppTextTheme.data.labelLarge
            ?.copyWith(fontWeight: FontWeight.bold)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_borderRadius),
          ),
        ),
        padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(
            horizontal: _horizontalPadding, vertical: _verticalPadding))),
  );
}
