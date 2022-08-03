import 'package:flutter/material.dart';
import 'package:online_learning_app/screens/on_boarding_screen.dart';

class OnlineLearningApp extends StatelessWidget {
  const OnlineLearningApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen1(),
    );
  }
}
