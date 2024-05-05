import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';

import '../../../features/features.dart';
import '../app_router.gr.dart';

class LanguageGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final languageController = GetIt.instance<LanguageController>();

    final languageSelected = languageController.languageWasSelected;
    if (languageSelected) {
      resolver.next();
      return;
    }

    await resolver.redirect(InitialLanguageScreenRoute());
  }
}
