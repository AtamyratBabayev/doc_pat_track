import 'package:flutter/material.dart';

import '../../../../../../../../../generated/assets.gen.dart';
import '../../../../../../../../src.dart';
import 'main_info_card_props.dart';

const _borderRadius = 20.0;
const _cardPaddingBetweenElements = 15.0;
const _phoneIconRightPadding = 5.0;
const _phoneIconSize = 16.0;
const _horizontalPadding = 20.0;
const _verticalPadding = 30.0;
const _subtitleBottomPadding = 20.0;

class MainInfoCard extends StatelessWidget {
  const MainInfoCard({required this.props, super.key});

  final MainInfoCardProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final borderRadius = BorderRadius.circular(_borderRadius);
    return Material(
      borderRadius: borderRadius,
      color: theme.colorScheme.surfaceBright,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: _horizontalPadding, vertical: _verticalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              props.fullname,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineMedium?.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w500),
            ),
            const HeightSpacer(_cardPaddingBetweenElements),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone,
                  color: theme.colorScheme.onSurfaceVariant,
                  size: _phoneIconSize,
                ),
                const WidthSpacer(_phoneIconRightPadding),
                Text(
                  props.phone,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            const HeightSpacer(_subtitleBottomPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonCircleIcon(
                  props: ButtonCircleIconProps(
                      icon: Assets.icons.phone,
                      iconColor: theme.colorScheme.onPrimary,
                      shapeColor: theme.colorScheme.primary),
                ),
                ButtonCircleIcon(
                  props: ButtonCircleIconProps(
                      icon: Assets.icons.edit,
                      iconColor: theme.colorScheme.onPrimary,
                      shapeColor: theme.colorScheme.primary),
                ),
                ButtonCircleIcon(
                  props: ButtonCircleIconProps(
                      icon: Assets.icons.trash,
                      iconColor: theme.colorScheme.onError,
                      shapeColor: theme.colorScheme.error),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
