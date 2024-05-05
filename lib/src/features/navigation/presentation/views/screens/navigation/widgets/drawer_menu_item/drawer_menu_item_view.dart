import 'package:flutter/material.dart';

import '../../../../../../../../shared/shared.dart';
import 'drawer_menu_item_props.dart';

const _iconSize = 24.0;
const _horizontalPadding = 20.0;
const _borderRadius = 12.0;
const _iconRightPadding = 18.0;
const _inkInnerPadding = 15.0;

class DrawerMenuItem extends StatelessWidget {
  const DrawerMenuItem({required this.props, super.key});

  final DrawerMenuItemProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
      child: InkWell(
        onTap: props.onPressed,
        borderRadius: BorderRadius.circular(_borderRadius),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(_borderRadius),
            color: props.isSelected ? theme.colorScheme.surface : null,
          ),
          child: Padding(
            padding: const EdgeInsets.all(_inkInnerPadding),
            child: Row(
              children: [
                props.icon.svg(
                  height: _iconSize,
                  width: _iconSize,
                  colorFilter: ColorFilter.mode(
                      props.isSelected
                          ? theme.colorScheme.onSurface
                          : theme.colorScheme.primary,
                      BlendMode.srcIn),
                ),
                const WidthSpacer(_iconRightPadding),
                Expanded(
                  child: Text(
                    props.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: theme.colorScheme.onBackground),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
