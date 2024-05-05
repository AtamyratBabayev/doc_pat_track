import '../../../../../../../../../shared/shared.dart';

class LanguageBarItemProps {
  const LanguageBarItemProps({required this.language, this.onPressed});

  final AppLanguage language;
  final void Function(AppLanguage)? onPressed;
}
