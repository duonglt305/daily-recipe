import 'package:dailyrecipe/components/buttons/primary.dart';
import 'package:dailyrecipe/components/inputs/text.dart';
import 'package:dailyrecipe/screens/signin/signin_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SignUpScreen extends StatelessWidget {
  static const String route = "/sign-up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/welcome-bg.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding * 1.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Spacer(flex: 1),
                    Image.asset("assets/images/logo.png"),
                    SizedBox(height: 40),
                    Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 50),
                    InputStyles.padding(
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputStyles.textInputField(
                          label: "Full Name",
                          prefixIcon: Image.asset("assets/icons/user.png"),
                        ),
                      ),
                    ),
                    InputStyles.padding(
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputStyles.textInputField(
                          label: "Email Address",
                          prefixIcon: Image.asset("assets/icons/email.png"),
                        ),
                      ),
                    ),
                    InputStyles.padding(
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputStyles.textInputField(
                          label: "Password",
                          prefixIcon: Image.asset("assets/icons/lock.png"),
                        ),
                      ),
                    ),
                    InputStyles.padding(
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputStyles.textInputField(
                          label: "Confirm Password",
                          prefixIcon: Image.asset("assets/icons/lock.png"),
                        ),
                      ),
                    ),
                    SizedBox(height: 55),
                    PrimaryButton(text: "Sign Up", onPress: () {}),
                    Spacer(flex: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Have an account already? ",
                          style: TextStyle(color: navyColor, fontSize: 14),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context)
                              .pushReplacementNamed(SignInScreen.route),
                          child: Text(
                            "Sign In",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 14,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
