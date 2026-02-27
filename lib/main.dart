import 'package:flutter/material.dart';
import 'package:news_app/screens/home/home_screen.dart';
import 'package:news_app/screens/splash_screen/splash_screen.dart';

import 'core/utils/app_routes.dart';
import 'core/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeScreen,
      routes: {


        AppRoutes.splashScreen: (context) => SplashScreen(),
        AppRoutes.homeScreen: (context) => HomeScreen(),



      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,



    );

  }
}
