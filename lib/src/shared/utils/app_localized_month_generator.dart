import 'dart:ui';

import 'package:intl/intl.dart';

class AppLocalizedMonthGenerator {
  const AppLocalizedMonthGenerator._();

  static List<String> getList({required Locale locale}) {
    List<String> months = [];
    for (int i = 1; i <= 12; i++) {
      DateTime monthDate = DateTime(0, i);
      String month = DateFormat('MMM', locale.languageCode).format(monthDate);
      months.add(month);
    }
    return months;
  }
}
