import 'package:flutter/material.dart';

import 'app/config/themes/dark_theme/app_dark_theme.dart';
import 'app/config/themes/light_theme/app_light_theme.dart';
import 'app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: AppDarkTheme.darkTheme,
      theme: AppLightTheme.lightTheme,
      home: const HomePage(),
    );
  }
}
