import 'package:dailyrecipe/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: contentColorLightTheme),
  );
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
