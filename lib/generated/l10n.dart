// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Doctor patients track`
  String get appName {
    return Intl.message(
      'Doctor patients track',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Interface language`
  String get languageTitle {
    return Intl.message(
      'Interface language',
      name: 'languageTitle',
      desc: '',
      args: [],
    );
  }

  /// `To continue, select one of provided languages`
  String get languageSubtitle {
    return Intl.message(
      'To continue, select one of provided languages',
      name: 'languageSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get drawerInformation {
    return Intl.message(
      'Information',
      name: 'drawerInformation',
      desc: '',
      args: [],
    );
  }

  /// `Patients`
  String get drawerPatients {
    return Intl.message(
      'Patients',
      name: 'drawerPatients',
      desc: '',
      args: [],
    );
  }

  /// `File transition`
  String get drawerFileTransition {
    return Intl.message(
      'File transition',
      name: 'drawerFileTransition',
      desc: '',
      args: [],
    );
  }

  /// `UI language`
  String get drawerLanguage {
    return Intl.message(
      'UI language',
      name: 'drawerLanguage',
      desc: '',
      args: [],
    );
  }

  /// `All rights reserved © {date}`
  String watermark(DateTime date) {
    final DateFormat dateDateFormat = DateFormat.y(Intl.getCurrentLocale());
    final String dateString = dateDateFormat.format(date);

    return Intl.message(
      'All rights reserved © $dateString',
      name: 'watermark',
      desc: '',
      args: [dateString],
    );
  }

  /// `Statistics`
  String get informationTitle {
    return Intl.message(
      'Statistics',
      name: 'informationTitle',
      desc: '',
      args: [],
    );
  }

  /// `treatments`
  String get informationTreatments {
    return Intl.message(
      'treatments',
      name: 'informationTreatments',
      desc: '',
      args: [],
    );
  }

  /// `patients`
  String get informationPatients {
    return Intl.message(
      'patients',
      name: 'informationPatients',
      desc: '',
      args: [],
    );
  }

  /// `Patients`
  String get patientSearchTitle {
    return Intl.message(
      'Patients',
      name: 'patientSearchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Search patient`
  String get patientSearchHint {
    return Intl.message(
      'Search patient',
      name: 'patientSearchHint',
      desc: '',
      args: [],
    );
  }

  /// `File transition`
  String get fileTransitionTitle {
    return Intl.message(
      'File transition',
      name: 'fileTransitionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Export`
  String get fileTransitionExport {
    return Intl.message(
      'Export',
      name: 'fileTransitionExport',
      desc: '',
      args: [],
    );
  }

  /// `Transfer information to file`
  String get fileTransitionExportSubtitle {
    return Intl.message(
      'Transfer information to file',
      name: 'fileTransitionExportSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Import`
  String get fileTransitionImport {
    return Intl.message(
      'Import',
      name: 'fileTransitionImport',
      desc: '',
      args: [],
    );
  }

  /// `Getting information from file`
  String get fileTransitionImportSubtitle {
    return Intl.message(
      'Getting information from file',
      name: 'fileTransitionImportSubtitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
