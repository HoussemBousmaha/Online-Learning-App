import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning_app/buttons/primary_button.dart';
import 'package:online_learning_app/constants.dart';
import 'package:online_learning_app/responsive.dart';
import 'package:online_learning_app/screens/enter_phone_screen/enter_phone_screen.dart';
import 'package:online_learning_app/screens/sign_up_screen/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = '/login-screen/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        child: Column(
          children: [
            buildLoginHeader(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizeConfig.verticalHeight(33),
                      const TextField(decoration: InputDecoration(labelText: 'Your Email')),
                      SizeConfig.verticalHeight(24),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(FontAwesomeIcons.eyeSlash, size: 20),
                        ),
                      ),
                      SizeConfig.verticalHeight(13),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            child: const Text(
                              'Forget password?',
                              style: TextStyle(
                                color: sublitleTextColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizeConfig.verticalHeight(13),
                      PrimaryButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, EnterPhoneScreen.routeName);
                        },
                        backgroundColor: primaryColor,
                        height: SizeConfig.height(50),
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizeConfig.verticalHeight(26),
                      buildDontHaveAccountHeader(context),
                      SizeConfig.verticalHeight(23),
                      buildOrLoginWithHeader(),
                      SizeConfig.verticalHeight(28),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(googleLogoPath),
                          ),
                          SizeConfig.horizontalWidth(45),
                          GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(facebookLogoPath),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildOrLoginWithHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 1,
          width: SizeConfig.width(100),
          color: descriptionTextColor,
        ),
        const Text(
          'Or login with',
          style: TextStyle(
            color: sublitleTextColor,
            fontSize: 12,
          ),
        ),
        Container(
          height: 1,
          width: SizeConfig.width(100),
          color: descriptionTextColor,
        ),
      ],
    );
  }

  Row buildDontHaveAccountHeader(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Don\'t have an account?',
          style: TextStyle(color: sublitleTextColor),
        ),
        SizeConfig.horizontalWidth(5),
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              SignUpScreen.routeName,
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            primary: primaryColor,
          ), //ripple color
          child: const Text(
            'Sign up',
            style: TextStyle(color: primaryColor),
          ),
        )
      ],
    );
  }

  Column buildLoginHeader() {
    return Column(
      children: [
        SizeConfig.verticalHeight(85),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 24),
          child: const Text(
            'Log In',
            style: TextStyle(
              color: titleTextColor,
              fontWeight: FontWeight.w700,
              fontSize: 32,
            ),
          ),
        ),
        SizeConfig.verticalHeight(25),
      ],
    );
  }
}
