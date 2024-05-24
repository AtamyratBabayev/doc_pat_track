import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../shared/shared.dart';
import '../../../controllers/controllers.dart';
import 'language_button/language_button.dart';

const _verticalPadding = 40.0;
const _horizontalPadding = 20.0;
const _titleBottomPadding = 10.0;
const _subtitleBottomPadding = 30.0;
const _languagesVerticalPadding = 10.0;

@RoutePage()
class InitialLanguageScreen extends StatelessWidget {
  const InitialLanguageScreen({super.key});

  Future<void> _updateLanguage(AppLanguage language) async {
    await GetIt.instance<LanguageController>().updateLanguage(language);
    GetIt.instance<AppRouter>().replace(const NavigationScreenRoute());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = context.loc;

    final languages = AppLoc.supportedLanguages
        .map(
          (language) => LanguageButton(
              props: LanguageButtonProps(
                  language: language, onPressed: _updateLanguage)),
        )
        .toList();

    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.symmetric(
          horizontal: _horizontalPadding, vertical: _verticalPadding),
      children: [
        Text(
          loc.languageTitle,
          style: theme.textTheme.headlineLarge?.copyWith(
              color: theme.colorScheme.onSurface, fontWeight: FontWeight.w500),
        ),
        const HeightSpacer(_titleBottomPadding),
        Text(
          loc.languageSubtitle,
          style: theme.textTheme.headlineSmall?.copyWith(
              color: theme.colorsExtension.onBackgroundSecondary,
              fontWeight: FontWeight.w500),
        ),
        const HeightSpacer(_subtitleBottomPadding),
        SeparatedColumn(
          children: languages,
          separatorBuilder: (_, __) =>
              const HeightSpacer(_languagesVerticalPadding),
        ),
      ],
    ));
  }
}
