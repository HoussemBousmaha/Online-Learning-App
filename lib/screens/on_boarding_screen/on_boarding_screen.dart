import 'package:flutter/material.dart';
import 'package:online_learning_app/screens/on_boarding_screen/buttons/skip_button.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: const [
            SizedBox(height: 90),
            SkipButton(),
          ],
        ),
      ),
    );
  }
}
