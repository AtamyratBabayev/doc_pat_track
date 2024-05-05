import 'package:hive_flutter/hive_flutter.dart';

import 'hive_boxes.dart';

class AppHive {
  const AppHive._();

  static Future<void> init() async {
    await Hive.initFlutter();
    await _openBoxes();
  }

  static Future<void> _openBoxes() async {
    await Hive.openBox(HiveBoxes.language);
    await Hive.openBox(HiveBoxes.theme);
  }
}
