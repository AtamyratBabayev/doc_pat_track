import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';
import 'guards/guards.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          guards: [LanguageGuard()],
          initial: true,
          page: NavigationScreenRoute.page,
          path: '/',
          transitionsBuilder: TransitionsBuilders.noTransition,
          durationInMilliseconds: 0,
        ),
        CustomRoute(
          page: InitialLanguageScreenRoute.page,
          path: '/language',
          transitionsBuilder: TransitionsBuilders.noTransition,
          durationInMilliseconds: 0,
        ),
      ];
}
