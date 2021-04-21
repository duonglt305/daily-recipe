import 'package:dailyrecipe/components/buttons/primary.dart';
import 'package:dailyrecipe/components/inputs/text.dart';
import 'package:dailyrecipe/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SignInScreen extends StatelessWidget {
  static const String route = "/sign-in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/welcome-bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Container(
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
                    Container(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        child: Text(
                          "Forgot Password?",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF128FAE),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 55),
                    PrimaryButton(text: "Sign In", onPress: () {}),
                    Spacer(flex: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(color: navyColor, fontSize: 14),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          ),
                          child: Text(
                            "Sign Up",
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
