import 'package:flutter/material.dart';
import 'package:restaurant_app/routes.dart';
import 'package:restaurant_app/theme_app.dart';
import 'package:restaurant_app/view/login_system/splash_screen/splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant App',
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: SplashScreen.id,
      theme: themeApp(),

    );
  }
}


