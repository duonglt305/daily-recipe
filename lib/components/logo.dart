import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

class Logo extends StatelessWidget {
  Logo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/icons/logo-bg.png",
          height: 111,
          width: 111,
          fit: BoxFit.cover
        ),
      ],
    );
  }
}
