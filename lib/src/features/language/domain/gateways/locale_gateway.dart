import '../../../../shared/shared.dart';

abstract class LocaleGateway {
  AppLanguage? fetch();
  Future<void> update(AppLanguage language);
}
