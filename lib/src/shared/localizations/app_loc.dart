import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:turkmen_localization_support/turkmen_localization_support.dart';

import '../../../generated/l10n.dart';

import 'package:flutter/material.dart';

import '../../../../../generated/assets.gen.dart';

class AppLanguage {
  const AppLanguage(
      {required this.name, required this.locale, required this.flag});

  final String name;
  final Locale locale;
  final SvgGenImage flag;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is AppLanguage &&
        other.name == name &&
        other.locale == locale &&
        other.flag == flag;
  }

  @override
  int get hashCode => Object.hash(name, locale, flag);
}

/// Supported locales class.
class AppLoc {
  // Localization delegates
  static const List<LocalizationsDelegate> appDelegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    TkMaterialLocalization.delegate,
    TkCupertinoLocalization.delegate
  ];

  // Supported locales list
  static List<Locale> get supportedLocales =>
      supportedLanguages.map((e) => e.locale).toList();

  static final List<AppLanguage> supportedLanguages = <AppLanguage>[
    AppLanguage(
        name: 'English',
        locale: const Locale('en'),
        flag: Assets.icons.flagUsa),
    AppLanguage(
        name: 'Türkmen',
        locale: const Locale('tk'),
        flag: Assets.icons.flagTurkmenistan),
    AppLanguage(
        name: 'Русский',
        locale: const Locale('ru'),
        flag: Assets.icons.flagRussia),
  ];
}
