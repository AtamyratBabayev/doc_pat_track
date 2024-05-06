import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'shared/shared.dart';

class DocPatTrackApp extends StatelessWidget {
  DocPatTrackApp({super.key});

  final _router = GetIt.instance<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scrollBehavior: AppCustomGestureBehavior(),
      routerConfig: _router.config(),
      localizationsDelegates: AppLoc.appDelegates,
      supportedLocales: AppLoc.supportedLocales,
      theme: AppDarkTheme.data,
      debugShowCheckedModeBanner: false,
      locale: AppLoc.supportedLocales.first,
      onGenerateTitle: (locContext) => locContext.loc.appName,
    );
  }
}
