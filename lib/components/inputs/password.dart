import 'package:dailyrecipe/components/inputs/text.dart';
import 'package:flutter/material.dart';

class PasswordInputField extends StatefulWidget {
  final String label;
  final TextEditingController controller;

  PasswordInputField({
    Key key,
    this.label,
    this.controller,
  });

  _PasswordInputFieldState createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _obscureText = true;
  String _password;

  @override
  Widget build(BuildContext context) {
    return InputStyles.padding(
      TextFormField(
        obscureText: this._obscureText,
        style: TextStyle(color: Colors.white),
        decoration: InputStyles.textInputField(
          label: widget.label,
          prefixIcon: Image.asset("assets/icons/lock.png"),
        ).copyWith(
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset("assets/icons/eye-lock.png"),
            ),
          ),
        ),
        onSaved: (p) => _password = p,
      ),
    );
  }
}
