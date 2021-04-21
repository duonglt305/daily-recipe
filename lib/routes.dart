import 'package:dailyrecipe/screens/signin/signin_screen.dart';
import 'package:dailyrecipe/screens/signup/signup_screen.dart';
import 'package:flutter/cupertino.dart';

RouteFactory routes() {
  return (RouteSettings settings) {
    var fullScreen = false;
    Widget screen;
    final args = settings.arguments as Map<String, dynamic> ?? {};
    switch (settings.name) {
      case SignInScreen.route:
        screen = SignInScreen();
        break;
        case SignUpScreen.route:
        screen = SignInScreen();
        break;
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
