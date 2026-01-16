


import 'package:bmi_eraasoft/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff1c2135),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
