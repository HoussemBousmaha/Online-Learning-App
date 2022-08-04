import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning_app/buttons/primary_button.dart';
import 'package:online_learning_app/constants.dart';
import 'package:online_learning_app/responsive.dart';

class SignUpScreen extends HookWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const String routeName = '/sign-up-screen/';

  @override
  Widget build(BuildContext context) {
    final isCheckedNotifier = useState<bool>(false);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            buildSignUpHeader(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
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
                        SizeConfig.verticalHeight(24),
                        PrimaryButton(
                          onPressed: () {},
                          height: 60,
                          width: double.infinity,
                          backgroundColor: primaryColor,
                          child: const Text(
                            'Create Account',
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizeConfig.verticalHeight(17),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PrimaryButton(
                              onPressed: () {
                                isCheckedNotifier.value = !isCheckedNotifier.value;
                              },
                              height: 20,
                              width: 20,
                              backgroundColor: Colors.white,
                              border: Border.all(color: explanationTextColor),
                              borderRadius: 4,
                              child: AnimatedSwitcher(
                                duration: const Duration(milliseconds: 400),
                                child: isCheckedNotifier.value ? const Icon(Icons.check, size: 15, color: titleTextColor) : const SizedBox.shrink(),
                              ),
                            ),
                            SizeConfig.horizontalWidth(7),
                            const Text(
                              'By creating an account you have to agree\nwith our them & condication.',
                              style: TextStyle(color: sublitleTextColor),
                            ),
                          ],
                        ),
                        SizeConfig.verticalHeight(25),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Already have an account?',
                              style: TextStyle(color: sublitleTextColor),
                            ),
                            SizeConfig.horizontalWidth(5),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                primary: primaryColor,
                              ), //ripple color
                              child: const Text(
                                'Log in',
                                style: TextStyle(color: primaryColor),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildSignUpHeader() {
    return Column(
      children: [
        SizeConfig.verticalHeight(85),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 24),
          child: const Text(
            'Sign Up',
            style: TextStyle(
              color: titleTextColor,
              fontWeight: FontWeight.w700,
              fontSize: 32,
            ),
          ),
        ),
        SizeConfig.verticalHeight(5),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 24),
          child: const Text(
            'Enter your details below & free sign up',
            style: TextStyle(
              color: explanationTextColor,
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
        ),
        SizeConfig.verticalHeight(10),
      ],
    );
  }
}
