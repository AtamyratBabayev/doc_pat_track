import 'package:flutter/material.dart';

import '../../../../../../../../../generated/assets.gen.dart';
import '../../../../../../../../shared/shared.dart';
import '../drawer_menu_item/drawer_menu_item.dart';
import '../language_bar/language_bar.dart';
import '../watermark.dart';
import 'app_drawer_props.dart';

const _spaceBetweenMenuItems = 5.0;
const _menuItemsVerticalPadding = 10.0;
const _bottomPadding = 24.0;
const _watermarkTopPadding = 40.0;
const _closePadding = 10.0;

class AppDrawer extends StatelessWidget {
  const AppDrawer({required this.props, super.key});

  final AppDrawerProps props;

  void _onItemPressed(BuildContext context, int pos) {
    props.onItemPressed(pos);
    final navigator = Navigator.of(context);
    if (!navigator.canPop()) {
      return;
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = context.loc;

    final menuItems = [
      DrawerMenuItemProps(
          icon: Assets.icons.rating,
          title: loc.drawerInformation,
          isSelected: props.position == 0,
          onPressed: () => _onItemPressed(context, 0)),
      DrawerMenuItemProps(
          icon: Assets.icons.user,
          title: loc.drawerPatients,
          isSelected: props.position == 1,
          onPressed: () => _onItemPressed(context, 1)),
      DrawerMenuItemProps(
          icon: Assets.icons.upload,
          title: loc.drawerFileTransition,
          isSelected: props.position == 2,
          onPressed: () => _onItemPressed(context, 2)),
    ];

    return Drawer(
      width: double.infinity,
      backgroundColor: theme.colorScheme.surface,
      elevation: 0.0,
      surfaceTintColor: Colors.transparent,
      shape: const RoundedRectangleBorder(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: const EdgeInsets.only(
                      top: _closePadding, right: _closePadding),
                  child: props.closeButtonEnabled
                      ? CloseButton(
                          color: theme.colorScheme.onSurfaceVariant,
                        )
                      : const SizedBox()),
            ),
            Expanded(
              child: ListView.separated(
                  padding: const EdgeInsets.symmetric(
                      vertical: _menuItemsVerticalPadding),
                  itemBuilder: (_, pos) => DrawerMenuItem(
                        props: menuItems[pos],
                      ),
                  separatorBuilder: (_, __) =>
                      const HeightSpacer(_spaceBetweenMenuItems),
                  itemCount: menuItems.length),
            ),
            LanguageBar(),
            const HeightSpacer(_watermarkTopPadding),
            const Watermark(),
            const HeightSpacer(_bottomPadding)
          ],
        ),
      ),
    );
  }
}
