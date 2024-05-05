import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../../../shared/shared.dart';
import '../../../../../../../features.dart';
import 'language_bar_item/language_bar_item.dart';

const _barBorderRadius = 20.0;
const _titleBottomPadding = 17.0;
const _barPadding = 16.0;
const _barHorizontalMargin = 20.0;

class LanguageBar extends StatelessWidget {
  LanguageBar({super.key});

  final _languageController = GetIt.instance<LanguageController>();

  Future<void> _updateLanguage(AppLanguage language) async {
    await _languageController.updateLanguage(language);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = context.loc;

    final languages = AppLoc.supportedLanguages
        .map((e) =>
            LanguageBarItemProps(language: e, onPressed: _updateLanguage))
        .toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _barHorizontalMargin),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(_barBorderRadius),
        ),
        child: Padding(
          padding: const EdgeInsets.all(_barPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                loc.drawerLanguage,
                style: theme.textTheme.bodyMedium
                    ?.copyWith(color: theme.colorScheme.onPrimaryContainer),
              ),
              const HeightSpacer(_titleBottomPadding),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      languages.map((e) => LanguageBarItem(props: e)).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
