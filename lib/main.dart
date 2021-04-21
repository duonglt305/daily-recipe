import 'package:dailyrecipe/screens/welcome/welcome_screen.dart';
import 'package:dailyrecipe/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider()
        ],
      ),
    );

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
