import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'src/features/features.dart';
import 'src/src.dart';

Future<void> main() async {
  await AppHive.init();
  AppInjections.init();
  GetIt.instance<LanguageController>().fetchLanguage();
  runApp(DocPatTrackApp());
}
