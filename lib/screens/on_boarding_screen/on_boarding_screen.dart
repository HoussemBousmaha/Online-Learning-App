import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:online_learning_app/buttons/primary_button.dart';
import 'package:online_learning_app/constants.dart';
import 'package:online_learning_app/general_providers.dart';
import 'package:online_learning_app/responsive.dart';
import 'package:online_learning_app/screens/on_boarding_screen/buttons/skip_button.dart';
import 'package:online_learning_app/screens/on_boarding_screen/widgets/worm_page_indicator.dart';
import 'package:online_learning_app/screens/sign_up_screen/sign_up_screen.dart';

class OnboardingScreensPageView extends ConsumerWidget {
  const OnboardingScreensPageView({Key? key}) : super(key: key);

  static const String routeName = '/onboarding-screen/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);

    final pageController = ref.watch(pageControllerProvider);
    return Stack(
      alignment: Alignment.center,
      children: [
        PageView(
          controller: pageController,
          physics: const ClampingScrollPhysics(),
          children: const [
            OnboardingScreen1(),
            OnboardingScreen2(),
            OnboardingScreen3(),
          ],
        ),
        WormPageIndicator(pageController: pageController),
      ],
    );
  }
}

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizeConfig.verticalHeight(90),
              const SkipButton(),
              SizeConfig.verticalHeight(20),
              SvgPicture.asset('$onBoardingIllustrationsPath-1.svg'),
              SizeConfig.verticalHeight(40),
              const Text(
                'Numerous free',
                style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w700, fontSize: 22),
              ),
              const Text(
                'trial courses',
                style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w700, fontSize: 22),
              ),
              SizeConfig.verticalHeight(10),
              const Text(
                'Free courses for you to',
                style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w400, fontSize: 16),
              ),
              const Text(
                'find your way to learning',
                style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizeConfig.verticalHeight(90),
              const SkipButton(),
              SizeConfig.verticalHeight(20),
              SvgPicture.asset('$onBoardingIllustrationsPath-2.svg'),
              SizeConfig.verticalHeight(40),
              const Text(
                'Quick and easy',
                style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w700, fontSize: 22),
              ),
              const Text(
                'learning',
                style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w700, fontSize: 22),
              ),
              SizeConfig.verticalHeight(10),
              const Text(
                'Easy and fast learning at',
                style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w400, fontSize: 16),
              ),
              const Text(
                'any time to help you',
                style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w400, fontSize: 16),
              ),
              const Text(
                'improve various skills',
                style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizeConfig.verticalHeight(140),
              SvgPicture.asset('$onBoardingIllustrationsPath-3.svg'),
              SizeConfig.verticalHeight(40),
              const Text(
                'Create your own',
                style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w700, fontSize: 22),
              ),
              const Text(
                'study plan',
                style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w700, fontSize: 22),
              ),
              SizeConfig.verticalHeight(10),
              const Text(
                'Study according to the',
                style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w400, fontSize: 16),
              ),
              const Text(
                'study plan, make study',
                style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w400, fontSize: 16),
              ),
              const Text(
                'more motivated',
                style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w400, fontSize: 16),
              ),
              SizeConfig.verticalHeight(60),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PrimaryButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    height: SizeConfig.height(50),
                    width: SizeConfig.width(160),
                    backgroundColor: primaryColor,
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizeConfig.horizontalWidth(10),
                  PrimaryButton(
                    onPressed: () {},
                    height: SizeConfig.height(50),
                    width: SizeConfig.width(160),
                    backgroundColor: Colors.white,
                    border: Border.all(color: primaryColor),
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
