import 'package:dailyrecipe/constants.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
    @required this.text,
    @required this.onPress,
    this.color = primaryColor,
    this.padding = const EdgeInsets.all(defaultPadding * 1.0),
  }) : super(key: key);

  final String text;
  final VoidCallback onPress;
  final color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      padding: padding,
      color: color,
      minWidth: double.infinity,
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
