// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:doc_pat_track/src/features/file_transition/presentation/views/screens/file_transition/file_transition_screen.dart'
    as _i1;
import 'package:doc_pat_track/src/features/information/presentation/views/screens/information/information_screen.dart'
    as _i3;
import 'package:doc_pat_track/src/features/language/presentation/views/screens/initial_language/initial_language_screen.dart'
    as _i4;
import 'package:doc_pat_track/src/features/navigation/presentation/views/screens/navigation/navigation_screen.dart'
    as _i5;
import 'package:doc_pat_track/src/features/patients/presentation/views/screens/patient/patient_screen.dart'
    as _i6;
import 'package:doc_pat_track/src/features/patients/presentation/views/screens/patient_search/patient_search_screen.dart'
    as _i7;
import 'package:doc_pat_track/src/shared/navigation/tab_routes/file_transition_tab.dart'
    as _i2;
import 'package:doc_pat_track/src/shared/navigation/tab_routes/patients_tab.dart'
    as _i8;
import 'package:flutter/material.dart' as _i10;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    FileTransitionScreenRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.FileTransitionScreen(),
      );
    },
    FileTransitionTabRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FileTransitionTab(),
      );
    },
    InformationScreenRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.InformationScreen(),
      );
    },
    InitialLanguageScreenRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.InitialLanguageScreen(),
      );
    },
    NavigationScreenRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NavigationScreen(),
      );
    },
    PatientScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PatientScreenRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.PatientScreen(
          id: args.id,
          key: args.key,
        ),
      );
    },
    PatientSearchScreenRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.PatientSearchScreen(),
      );
    },
    PatientsTabRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.PatientsTab(),
      );
    },
  };
}

/// generated route for
/// [_i1.FileTransitionScreen]
class FileTransitionScreenRoute extends _i9.PageRouteInfo<void> {
  const FileTransitionScreenRoute({List<_i9.PageRouteInfo>? children})
      : super(
          FileTransitionScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'FileTransitionScreenRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FileTransitionTab]
class FileTransitionTabRoute extends _i9.PageRouteInfo<void> {
  const FileTransitionTabRoute({List<_i9.PageRouteInfo>? children})
      : super(
          FileTransitionTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'FileTransitionTabRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.InformationScreen]
class InformationScreenRoute extends _i9.PageRouteInfo<void> {
  const InformationScreenRoute({List<_i9.PageRouteInfo>? children})
      : super(
          InformationScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'InformationScreenRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.InitialLanguageScreen]
class InitialLanguageScreenRoute extends _i9.PageRouteInfo<void> {
  const InitialLanguageScreenRoute({List<_i9.PageRouteInfo>? children})
      : super(
          InitialLanguageScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitialLanguageScreenRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NavigationScreen]
class NavigationScreenRoute extends _i9.PageRouteInfo<void> {
  const NavigationScreenRoute({List<_i9.PageRouteInfo>? children})
      : super(
          NavigationScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationScreenRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.PatientScreen]
class PatientScreenRoute extends _i9.PageRouteInfo<PatientScreenRouteArgs> {
  PatientScreenRoute({
    required int id,
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          PatientScreenRoute.name,
          args: PatientScreenRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PatientScreenRoute';

  static const _i9.PageInfo<PatientScreenRouteArgs> page =
      _i9.PageInfo<PatientScreenRouteArgs>(name);
}

class PatientScreenRouteArgs {
  const PatientScreenRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final _i10.Key? key;

  @override
  String toString() {
    return 'PatientScreenRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i7.PatientSearchScreen]
class PatientSearchScreenRoute extends _i9.PageRouteInfo<void> {
  const PatientSearchScreenRoute({List<_i9.PageRouteInfo>? children})
      : super(
          PatientSearchScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'PatientSearchScreenRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PatientsTab]
class PatientsTabRoute extends _i9.PageRouteInfo<void> {
  const PatientsTabRoute({List<_i9.PageRouteInfo>? children})
      : super(
          PatientsTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'PatientsTabRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
