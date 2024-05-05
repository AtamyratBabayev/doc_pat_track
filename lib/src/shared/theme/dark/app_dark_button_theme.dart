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
            MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.greyBlueDark;
          }
          return AppColors.blue;
        }),
        foregroundColor:
            MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.greyBlue;
          }
          return Colors.white;
        }),
        textStyle: MaterialStatePropertyAll(AppTextTheme.data.labelLarge
            ?.copyWith(fontWeight: FontWeight.bold)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_borderRadius),
          ),
        ),
        padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(
            horizontal: _horizontalPadding, vertical: _verticalPadding))),
  );
}
