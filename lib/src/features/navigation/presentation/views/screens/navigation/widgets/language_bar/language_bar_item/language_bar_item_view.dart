import 'package:flutter/material.dart';

import '../../../../../../../../../shared/shared.dart';
import 'language_bar_item.dart';

const _iconSize = 32.0;
const _animationDuration = 250;
const _underlineHeight = 4.0;
const _underlineBorderRadius = 8.0;
const _iconBottomSpacing = 4.0;
const _inkWellPadding = 4.0;
const _splashBorderRadius = 8.0;

class LanguageBarItem extends StatelessWidget {
  const LanguageBarItem({required this.props, super.key});

  final LanguageBarItemProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSelected = Localizations.localeOf(context) == props.language.locale;
    return Material(
      color: theme.colorScheme.surfaceBright,
      child: InkWell(
        borderRadius: BorderRadius.circular(_splashBorderRadius),
        onTap: () => props.onPressed?.call(props.language),
        child: Padding(
          padding: const EdgeInsets.all(_inkWellPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedOpacity(
                duration: const Duration(milliseconds: _animationDuration),
                opacity: isSelected ? 1.0 : 0.6,
                child: props.language.flag.svg(
                  height: _iconSize,
                  width: _iconSize,
                ),
              ),
              const HeightSpacer(_iconBottomSpacing),
              AnimatedContainer(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(_underlineBorderRadius),
                  color: isSelected
                      ? theme.colorScheme.onSurface
                      : Colors.transparent,
                ),
                duration: const Duration(milliseconds: _animationDuration),
                height: _underlineHeight,
                width: _iconSize,
              )
            ],
          ),
        ),
      ),
    );
  }
}
