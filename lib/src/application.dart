import 'package:flutter/material.dart';

import 'features/features.dart';
import 'shared/shared.dart';

class DocPatTrackApp extends StatelessWidget {
  const DocPatTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppDarkTheme.data,
      debugShowCheckedModeBanner: false,
      home: const InitialLanguageScreen(),
    );
  }
}
