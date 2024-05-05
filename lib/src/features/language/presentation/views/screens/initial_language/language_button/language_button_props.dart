import '../../../../../../../shared/shared.dart';

typedef LanguageTapHandler = void Function(AppLanguage);

class LanguageButtonProps {
  const LanguageButtonProps({required this.language, this.onPressed});

  final AppLanguage language;
  final LanguageTapHandler? onPressed;
}
