import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.height,
    this.width = double.infinity,
    this.backgroundColor = Colors.white,
    this.border,
    this.borderRadius = 12,
    this.child,
  }) : super(key: key);

  final double height;
  final double width;
  final Widget? child;
  final double borderRadius;
  final Color backgroundColor;
  final Border? border;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
