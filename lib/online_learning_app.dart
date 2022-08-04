import 'package:flutter/material.dart';

import 'package:online_learning_app/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:online_learning_app/screens/sign_up_screen/sign_up_screen.dart';

class OnlineLearningApp extends StatelessWidget {
  const OnlineLearningApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const OnboardingScreensPageView(),
      routes: {
        OnboardingScreensPageView.routeName: (context) => const OnboardingScreensPageView(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
      },
    );
  }
}
