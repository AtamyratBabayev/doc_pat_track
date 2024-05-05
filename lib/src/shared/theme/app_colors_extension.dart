import 'package:flutter/material.dart';

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  const AppColorsExtension({required this.onBackgroundSecondary});

  final Color? onBackgroundSecondary;

  @override
  ThemeExtension<AppColorsExtension> copyWith({Color? onBackgroundSecondary}) {
    return AppColorsExtension(
        onBackgroundSecondary:
            onBackgroundSecondary ?? this.onBackgroundSecondary);
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
      covariant ThemeExtension<AppColorsExtension>? other, double t) {
    if (other is! AppColorsExtension) {
      return this;
    }
    return AppColorsExtension(
      onBackgroundSecondary: Color.lerp(
        onBackgroundSecondary,
        other.onBackgroundSecondary,
        t,
      ),
    );
  }

  @override
  String toString() =>
      'ColorsExtension(onBackgroundSecondary: $onBackgroundSecondary)';
}
