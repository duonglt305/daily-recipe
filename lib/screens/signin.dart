import 'package:dailyrecipe/components/buttons/primary.dart';
import 'package:dailyrecipe/screens/signup.dart';
import 'package:dailyrecipe/screens/welcome.dart';
import 'package:dailyrecipe/screens/welcome/splash.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              "Sign In",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              prefixIcon: Image.asset("assets/icons/user.png"),
              label: "Email Address",
            ),
            TextField(
              prefixIcon: Image.asset("assets/icons/lock.png"),
              label: "Password",
            ),
            SizedBox(height: 55),
            PrimaryButton(text: "Sign In", onPress: () {}),
            SizedBox(height: 160),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(color: navyColor, fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: primaryColor),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextField extends StatelessWidget {
  final Widget prefixIcon;
  final String label;

  const TextField({
    Key key,
    this.prefixIcon,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        decoration: InputDecoration(
          labelStyle: TextStyle(color: navyColor),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: navyColor,
            ),
          ),
          labelText: this.label,
          prefixIcon: this.prefixIcon != null
              ? Padding(
                  padding: EdgeInsets.all(8),
                  child: this.prefixIcon,
                )
              : null,
        ),
      ),
    );
  }
}
