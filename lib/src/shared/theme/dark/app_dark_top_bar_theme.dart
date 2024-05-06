import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_theme.dart';

class AppDarkTopBarTheme {
  AppDarkTopBarTheme._();

  static AppBarTheme get data => AppBarTheme(
        backgroundColor: AppColors.blueGreyDark,
        foregroundColor: Colors.white,
        scrolledUnderElevation: 0.0,
        iconTheme: const IconThemeData(color: AppColors.blueKoi, size: 32.0),
        titleTextStyle: AppTextTheme.data.headlineSmall
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        elevation: 0.0,
      );
}
