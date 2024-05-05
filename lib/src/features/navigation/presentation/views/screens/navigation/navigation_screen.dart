import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../../shared/shared.dart';
import 'widgets/widgets.dart';

@RoutePage()
class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      homeIndex: 0,
      routes: const [
        InformationScreenRoute(),
        PatientSearchScreenRoute(),
        FileTransitionScreenRoute()
      ],
      builder: (routeContext, child) {
        final router = AutoTabsRouter.of(routeContext);
        return Scaffold(
          appBar: TopBar(
            props: TopBarProps(),
          ),
          body: child,
          endDrawer: AppDrawer(
            props: AppDrawerProps(
                position: router.activeIndex,
                onItemPressed: router.setActiveIndex),
          ),
        );
      },
    );
  }
}
