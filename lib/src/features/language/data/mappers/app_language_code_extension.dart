import '../../../../shared/shared.dart';

extension AppLanguageCodeExtension on String {
  AppLanguage toAppLanguage() {
    return AppLoc.supportedLanguages.firstWhere(
        (element) => element.locale.languageCode == this,
        orElse: () => AppLoc.supportedLanguages.first);
  }
}
