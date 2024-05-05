import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'top_bar_props.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({required this.props, super.key});

  final TopBarProps props;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    Widget? title;

    if (props.title != null) {
      title = Text(props.title!);
    }
    return AppBar(
      title: title,
      leading: const AutoLeadingButton(),
    );
  }
}
