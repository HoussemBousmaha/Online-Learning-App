import 'package:flutter/material.dart';
import 'package:online_learning_app/constants.dart';
import 'package:online_learning_app/screens/confirm_phone_number_screen/confirm_phone_number_screen.dart';
import 'package:online_learning_app/screens/enter_phone_screen/enter_phone_screen.dart';
import 'package:online_learning_app/screens/login_screen/login_screen.dart';

import 'package:online_learning_app/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:online_learning_app/screens/sign_up_screen/sign_up_screen.dart';

class OnlineLearningApp extends StatelessWidget {
  const OnlineLearningApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(color: Colors.grey),
          floatingLabelStyle: const TextStyle(color: titleTextColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: descriptionTextColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: titleTextColor),
          ),
          suffixIconColor: titleTextColor,
        ),
      ),
      home: const EnterPhoneScreen(),
      routes: {
        OnboardingScreensPageView.routeName: (context) => const OnboardingScreensPageView(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        ConfirmPhoneNumberScreen.routeName: (context) => const ConfirmPhoneNumberScreen(),
      },
    );
  }
}
