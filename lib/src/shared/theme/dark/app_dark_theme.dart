import 'package:flutter/material.dart';
import '../../../../generated/fonts.gen.dart';
import '../app_colors.dart';
import '../app_text_theme.dart';
import 'app_dark_action_icons_theme.dart';
import 'app_dark_button_theme.dart';
import 'app_dark_color_scheme.dart';
import 'app_dark_fab_theme.dart';
import 'app_dark_text_input_theme.dart';
import 'app_dark_top_bar_theme.dart';

class AppDarkTheme {
  static ThemeData get data => ThemeData(
      scaffoldBackgroundColor: AppColors.blueGreyDark,
      colorScheme: AppDarkColorScheme.data,
      useMaterial3: true,
      floatingActionButtonTheme: AppDarkFabTheme.data,
      filledButtonTheme: AppDarkButtonTheme.data,
      inputDecorationTheme: AppDarkTextInputTheme.data,
      appBarTheme: AppDarkTopBarTheme.data,
      actionIconTheme: AppDarkActionIconsTheme.data,
      fontFamily: FontFamily.gilroy,
      textTheme: AppTextTheme.data);
}
