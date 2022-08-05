import 'package:flutter/material.dart';
import 'package:online_learning_app/constants.dart';
import 'package:online_learning_app/responsive.dart';

class DigitButton extends StatelessWidget {
  const DigitButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero, primary: titleTextColor),
      onPressed: onPressed,
      child: Container(
        height: SizeConfig.size.width / 4,
        width: SizeConfig.size.width / 3,
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
