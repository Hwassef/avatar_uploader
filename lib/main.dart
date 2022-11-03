import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/config/themes/dark_theme/app_dark_theme.dart';
import 'app/config/themes/light_theme/app_light_theme.dart';
import 'app/pages/home_page/bloc/home_page_bloc.dart';
import 'app/pages/home_page/home_page.dart';
import 'injection_container.dart' as di;
import 'injection_container.dart';

void main() async {
  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomePageBloc>(),
      child: MaterialApp(
        darkTheme: AppDarkTheme.darkTheme,
        theme: AppLightTheme.lightTheme,
        home: const HomePage(),
      ),
    );
  }
}
