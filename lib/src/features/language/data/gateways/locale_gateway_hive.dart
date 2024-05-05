import 'package:hive/hive.dart';

import '../../../../shared/shared.dart';
import '../../domain/gateways/gateways.dart';
import '../const/const.dart';
import '../mapper/app_language_code_extension.dart';

/// Gateway that fetches locale from Hive data source.
class LocaleGatewayHive extends LocaleGateway {
  LocaleGatewayHive();
  // Contains localization
  final configBox = Hive.box(HiveBoxes.language);

  @override
  AppLanguage? fetch() {
    final language = configBox.get(HiveLocalizationsKey.key);
    if (language == null) {
      return null;
    }
    return (language as String).toAppLanguage();
  }

  @override
  Future<void> update(AppLanguage language) {
    return configBox.put(
        HiveLocalizationsKey.key, language.locale.languageCode);
  }
}
