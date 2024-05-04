import 'package:flutter/material.dart';
import '../../../../generated/fonts.gen.dart';
import '../app_colors.dart';
import '../app_text_theme.dart';
import 'app_dark_color_scheme.dart';
import 'app_text_input_theme.dart';

class AppDarkTheme {
  static ThemeData get data => ThemeData(
      scaffoldBackgroundColor: AppColors.blueGreyDark,
      colorScheme: AppDarkColorScheme.data,
      useMaterial3: true,
      inputDecorationTheme: AppLightTextInputTheme.data,
      fontFamily: FontFamily.gilroy,
      textTheme: AppTextTheme.data);
}
