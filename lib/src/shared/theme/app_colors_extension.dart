// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  const AppColorsExtension(
      {required this.onBackgroundSecondary, required this.onSurfaceSecondary});

  final Color? onBackgroundSecondary;
  final Color? onSurfaceSecondary;

  @override
  ThemeExtension<AppColorsExtension> copyWith(
      {Color? onBackgroundSecondary, Color? onSurfaceSecondary}) {
    return AppColorsExtension(
        onBackgroundSecondary:
            onBackgroundSecondary ?? this.onBackgroundSecondary,
        onSurfaceSecondary: onSurfaceSecondary ?? this.onSurfaceSecondary);
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
      onSurfaceSecondary: Color.lerp(
        onSurfaceSecondary,
        other.onSurfaceSecondary,
        t,
      ),
    );
  }

  @override
  String toString() =>
      'AppColorsExtension(onBackgroundSecondary: $onBackgroundSecondary, onSurfaceSecondary: $onSurfaceSecondary)';
}
