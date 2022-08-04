import 'package:flutter/material.dart';
import 'package:online_learning_app/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WormPageIndicator extends StatelessWidget {
  const WormPageIndicator({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0, 0.9),
      child: SmoothPageIndicator(
        controller: pageController,
        count: 3,
        effect: const WormEffect(
          activeDotColor: primaryColor,
          dotColor: secondaryNavigationColor,
        ),
        onDotClicked: (index) {
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
      ),
    );
  }
}
