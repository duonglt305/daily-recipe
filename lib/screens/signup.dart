import 'package:dailyrecipe/components/buttons/primary.dart';
import 'package:dailyrecipe/screens/signin.dart';
import 'package:dailyrecipe/screens/welcome.dart';
import 'package:dailyrecipe/screens/welcome/splash.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              prefixIcon: Image.asset("assets/icons/user.png"),
              label: "Full Name",
            ),
            TextField(
              prefixIcon: Image.asset("assets/icons/email.png"),
              label: "Email Address",
            ),
            SizedBox(height: 55),
            PrimaryButton(text: "Sign Up", onPress: () {}),
            SizedBox(height: 160),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already registered? ",
                    style: TextStyle(color: navyColor, fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign In",
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
