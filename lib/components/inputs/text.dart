import 'package:flutter/material.dart';

import '../../constants.dart';

class InputStyles {
  static InputDecoration textInputField({String label, Widget prefixIcon}) {
    return InputDecoration(
      labelStyle: TextStyle(color: navyColor),
      hintStyle: TextStyle(color: Colors.white),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: navyColor,
        ),
      ),
      labelText: label,
      prefixIcon: prefixIcon != null
          ? Padding(
              padding: EdgeInsets.all(8),
              child: prefixIcon,
            )
          : null,
    );
  }

  static Widget padding(TextFormField child) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 16,
      ),
      child: child,
    );
  }
}
