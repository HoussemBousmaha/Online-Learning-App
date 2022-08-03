import 'package:flutter/material.dart';
import 'package:online_learning_app/constants.dart';

class OnboardingNavigationRow extends StatelessWidget {
  const OnboardingNavigationRow({
    Key? key,
    required this.selectedIndex,
    required this.pageCount,
  }) : super(key: key);

  final int selectedIndex, pageCount;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 220,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < pageCount; i++)
            Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 5,
                  width: selectedIndex == i ? 20 : 10,
                  decoration: BoxDecoration(
                    color: selectedIndex == i ? primaryColor : secondaryNavigationColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
        ],
      ),
    );
  }
}
