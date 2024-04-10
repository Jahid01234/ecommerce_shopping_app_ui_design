
import 'package:ecommerce_shopping_app_ui_design/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'screens/navigation_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFEF6969)
      ),
      home: SplashScreen(),
    );
  }
}

