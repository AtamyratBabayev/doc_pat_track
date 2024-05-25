import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';
import 'guards/guards.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Page,Route')
class AppRouter extends $AppRouter {
  List<AutoRoute> get _patientsTabChildren => [
        CustomRoute(
            page: PatientSearchScreenRoute.page,
            path: '',
            transitionsBuilder: TransitionsBuilders.noTransition,
            durationInMilliseconds: 0),
        AutoRoute(page: PatientScreenRoute.page, path: ':id')
      ];

  List<AutoRoute> get _fileTransitionTabChildren => [
        CustomRoute(
            page: FileTransitionScreenRoute.page,
            path: '',
            transitionsBuilder: TransitionsBuilders.noTransition,
            durationInMilliseconds: 0)
      ];

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
                  page: PatientsTabRoute.page,
                  path: 'patients',
                  transitionsBuilder: TransitionsBuilders.noTransition,
                  durationInMilliseconds: 0,
                  children: _patientsTabChildren),
              CustomRoute(
                  page: FileTransitionTabRoute.page,
                  path: 'file_transition',
                  transitionsBuilder: TransitionsBuilders.noTransition,
                  durationInMilliseconds: 0,
                  children: _fileTransitionTabChildren),
            ]),
        CustomRoute(
          page: InitialLanguageScreenRoute.page,
          path: '/language',
          transitionsBuilder: TransitionsBuilders.noTransition,
          durationInMilliseconds: 0,
        ),
      ];
}
