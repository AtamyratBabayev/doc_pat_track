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
            children: [
              RedirectRoute(path: '', redirectTo: 'information'),
              CustomRoute(
                  page: InformationScreenRoute.page,
                  path: 'information',
                  transitionsBuilder: TransitionsBuilders.noTransition,
                  durationInMilliseconds: 0),
              CustomRoute(
                  page: PatientSearchScreenRoute.page,
                  path: 'patients',
                  transitionsBuilder: TransitionsBuilders.noTransition,
                  durationInMilliseconds: 0),
              CustomRoute(
                  page: FileTransitionScreenRoute.page,
                  path: 'file_transition',
                  transitionsBuilder: TransitionsBuilders.noTransition,
                  durationInMilliseconds: 0),
            ]),
        CustomRoute(
          page: InitialLanguageScreenRoute.page,
          path: '/language',
          transitionsBuilder: TransitionsBuilders.noTransition,
          durationInMilliseconds: 0,
        ),
      ];
}
