import 'package:dailyrecipe/screens/welcome.dart';
import 'package:dailyrecipe/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Recipe',
      theme: lightThemeData(context),
      home: WelcomeScreen(),
    );
  }
}
