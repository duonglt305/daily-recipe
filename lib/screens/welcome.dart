import 'dart:ui';

import 'package:dailyrecipe/components/buttons/primary.dart';
import 'package:dailyrecipe/screens/signin.dart';
import 'package:dailyrecipe/screens/signup.dart';
import 'package:dailyrecipe/screens/welcome/splash.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        child: Column(
          children: [
            SizedBox(height: 15),
            Text(
              "Cooking Done The Easy Way",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 250,
            ),
            PrimaryButton(
                text: "Sign In",
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                  );
                }),
            SizedBox(
              height: 45,
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
              child: Padding(
                padding: const EdgeInsets.all(7),
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
