import 'package:dailyrecipe/routes.dart';
import 'package:dailyrecipe/screens/welcome/welcome_screen.dart';
import 'package:dailyrecipe/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Recipe',
      theme: lightThemeData(context),
      onGenerateRoute: routes(),
      debugShowCheckedModeBanner: false,
    );
  }
}
