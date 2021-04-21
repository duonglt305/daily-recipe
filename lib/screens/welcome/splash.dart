import 'package:flutter/material.dart';

import '../../constants.dart';

class SplashScreen extends StatelessWidget {
  final Widget child;

  const SplashScreen({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/welcome-bg.png"),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Spacer(flex: 5),
          Container(
            width: 224,
            height: 111,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 8),
                  alignment: Alignment.topCenter,
                  width: 111,
                  height: 111,
                  decoration: BoxDecoration(
                    color: navyColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(111),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 111 / 2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/icons/logo.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: 19),
                  child: Text(
                    "Daily Recipe",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    softWrap: false,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding * 1.5),
            child: child,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
