import 'package:get_it/get_it.dart';

import '../../features/features.dart';
import '../navigation/navigation.dart';

class AppInjections {
  const AppInjections._();

  static void init() {
    final getIt = GetIt.instance;

    getIt.registerSingleton(AppRouter());
    getIt.registerSingleton(LanguageController(LocaleGatewayHive()));
  }
}
