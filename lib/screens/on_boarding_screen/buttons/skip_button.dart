import 'package:flutter/material.dart';
import 'package:online_learning_app/constants.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10,
            ),
            child: Text(
              'Skip',
              style: TextStyle(
                color: sublitleTextColor,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
