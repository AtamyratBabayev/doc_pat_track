// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:doc_pat_track/src/features/file_transition/presentation/views/screens/file_transition/file_transition_screen.dart'
    as _i1;
import 'package:doc_pat_track/src/features/information/presentation/views/screens/information/information_screen.dart'
    as _i2;
import 'package:doc_pat_track/src/features/language/presentation/views/screens/initial_language/initial_language_screen.dart'
    as _i3;
import 'package:doc_pat_track/src/features/navigation/presentation/views/screens/navigation/navigation_screen.dart'
    as _i4;
import 'package:doc_pat_track/src/features/patients/presentation/views/screens/patient_search/patient_search_screen.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    FileTransitionScreenRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.FileTransitionScreen(),
      );
    },
    InformationScreenRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.InformationScreen(),
      );
    },
    InitialLanguageScreenRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.InitialLanguageScreen(),
      );
    },
    NavigationScreenRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.NavigationScreen(),
      );
    },
    PatientSearchScreenRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.PatientSearchScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.FileTransitionScreen]
class FileTransitionScreenRoute extends _i6.PageRouteInfo<void> {
  const FileTransitionScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          FileTransitionScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'FileTransitionScreenRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.InformationScreen]
class InformationScreenRoute extends _i6.PageRouteInfo<void> {
  const InformationScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          InformationScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'InformationScreenRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.InitialLanguageScreen]
class InitialLanguageScreenRoute extends _i6.PageRouteInfo<void> {
  const InitialLanguageScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          InitialLanguageScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitialLanguageScreenRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.NavigationScreen]
class NavigationScreenRoute extends _i6.PageRouteInfo<void> {
  const NavigationScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          NavigationScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationScreenRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PatientSearchScreen]
class PatientSearchScreenRoute extends _i6.PageRouteInfo<void> {
  const PatientSearchScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          PatientSearchScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'PatientSearchScreenRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
