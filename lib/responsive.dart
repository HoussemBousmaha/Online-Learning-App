import 'package:flutter/material.dart';

class SizeConfig {
  static Size size = const Size(0, 0);

  static const double designHeight = 812;
  static const double designWidth = 375;

  void init(BuildContext context) {
    size = MediaQuery.of(context).size;
  }

  static double height(double height) {
    return height * (size.height / designHeight);
  }

  static double width(double width) {
    return width * (size.width / designWidth);
  }

  static SizedBox verticalHeight(double height) {
    return SizedBox(
      height: SizeConfig.height(height),
    );
  }

  static SizedBox horizontalWidth(double width) {
    return SizedBox(
      width: SizeConfig.width(width),
    );
  }
}
