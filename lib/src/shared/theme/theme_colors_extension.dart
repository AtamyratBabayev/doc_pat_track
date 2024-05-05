import 'package:flutter/material.dart';

import 'app_colors_extension.dart';

/// Extension that simplifies getting [ColorsExtension].
/// Example:
/// ```
/// ....
/// final theme = Theme.of(context);
/// final extension = theme.colorsExtension;
/// ....
/// ```
extension ThemeColorsExtension on ThemeData {
  /// Returns non nullable Colors Extension. In case if [ColorsExtension] might be null,
  /// remove this.
  AppColorsExtension get colorsExtension => extension<AppColorsExtension>()!;
}
