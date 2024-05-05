// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:doc_pat_track/src/features/language/presentation/views/screens/initial_language/initial_language_screen.dart'
    as _i1;
import 'package:doc_pat_track/src/features/navigation/presentation/views/screens/navigation/navigation_screen.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    InitialLanguageScreenRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.InitialLanguageScreen(),
      );
    },
    NavigationScreenRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NavigationScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.InitialLanguageScreen]
class InitialLanguageScreenRoute extends _i3.PageRouteInfo<void> {
  const InitialLanguageScreenRoute({List<_i3.PageRouteInfo>? children})
      : super(
          InitialLanguageScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitialLanguageScreenRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NavigationScreen]
class NavigationScreenRoute extends _i3.PageRouteInfo<void> {
  const NavigationScreenRoute({List<_i3.PageRouteInfo>? children})
      : super(
          NavigationScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationScreenRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
