import 'package:dailyrecipe/screens/signin/signin_screen.dart';
import 'package:dailyrecipe/screens/signup/signup_screen.dart';
import 'package:dailyrecipe/screens/welcome/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var bootStage = 1;
RouteFactory routes() {
  return (RouteSettings settings) {
    var fullScreen = false;
    Widget screen;
    if (bootStage == 1) {
      bootStage = 2;
      return PageRouteBuilder(
        pageBuilder: (_, __, ___) => WelcomeScreen(),
      );
    }
    final args = settings.arguments as Map<String, dynamic> ?? {};
    print(args);
    print(settings.name);
    switch (settings.name) {
      case SignInScreen.route:
        screen = SignInScreen();
        break;
      case SignUpScreen.route:
        screen = SignUpScreen();
        break;
    }
    if (bootStage == 2) {
      bootStage = 3;
      return PageRouteBuilder(
        pageBuilder: (BuildContext context, _, __) => screen,
        transitionDuration: const Duration(milliseconds: 500),
      );
    }
    if(fullScreen){
      return MaterialPageRoute(
        builder: (_) => screen,
        fullscreenDialog: true,
      );
    }
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, _, __) {
        return screen;
      },
      transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  };
}
