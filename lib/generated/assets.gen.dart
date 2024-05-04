/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/gilroy_light.ttf
  String get gilroyLight => 'assets/fonts/gilroy_light.ttf';

  /// File path: assets/fonts/gilroy_medium.ttf
  String get gilroyMedium => 'assets/fonts/gilroy_medium.ttf';

  /// File path: assets/fonts/gilroy_regular.ttf
  String get gilroyRegular => 'assets/fonts/gilroy_regular.ttf';

  /// List of all assets
  List<String> get values => [gilroyLight, gilroyMedium, gilroyRegular];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/flag_russia.svg
  SvgGenImage get flagRussia =>
      const SvgGenImage('assets/icons/flag_russia.svg');

  /// File path: assets/icons/flag_turkmenistan.svg
  SvgGenImage get flagTurkmenistan =>
      const SvgGenImage('assets/icons/flag_turkmenistan.svg');

  /// File path: assets/icons/flag_usa.svg
  SvgGenImage get flagUsa => const SvgGenImage('assets/icons/flag_usa.svg');

  /// List of all assets
  List<SvgGenImage> get values => [flagRussia, flagTurkmenistan, flagUsa];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}