import 'package:flutter/material.dart';

import '../../../../shared/shared.dart';
import '../../domain/domain.dart';

class LanguageController extends ChangeNotifier {
  LanguageController(LocaleGateway localeGateway)
      : _localeGateway = localeGateway;

  final LocaleGateway _localeGateway;

  AppLanguage? _language;

  AppLanguage? get language => _language;

  bool _languageWasSelected = false;

  bool get languageWasSelected => _languageWasSelected;

  AppLanguage fetchLanguage() {
    _language = _localeGateway.fetch();
    _languageWasSelected = _language != null;
    if (!_languageWasSelected) {
      _language = AppLoc.supportedLanguages.first;
    }
    notifyListeners();
    return _language!;
  }

  Future<void> updateLanguage(AppLanguage language) async {
    await _localeGateway.update(language);
    _languageWasSelected = true;
    _language = language;
    notifyListeners();
  }
}
