import 'package:flutter/material.dart';

import '../../../../generated/assets.gen.dart';
import '../app_colors.dart';

const _iconSize = 24.0;

class AppDarkActionIconsTheme {
  AppDarkActionIconsTheme._();

  static ActionIconThemeData get data => ActionIconThemeData(
        backButtonIconBuilder: (context) => Assets.icons.chevronLeft.svg(
          height: _iconSize,
          width: _iconSize,
          colorFilter:
              const ColorFilter.mode(AppColors.blueKoi, BlendMode.srcIn),
        ),
        endDrawerButtonIconBuilder: (context) => Assets.icons.menu.svg(
          height: _iconSize,
          width: _iconSize,
          colorFilter:
              const ColorFilter.mode(AppColors.blueKoi, BlendMode.srcIn),
        ),
        drawerButtonIconBuilder: (context) => Assets.icons.menu.svg(
          height: _iconSize,
          width: _iconSize,
          colorFilter:
              const ColorFilter.mode(AppColors.blueKoi, BlendMode.srcIn),
        ),
      );
}
