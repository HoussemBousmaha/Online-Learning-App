import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:online_learning_app/buttons/primary_button.dart';
import 'package:online_learning_app/constants.dart';
import 'package:online_learning_app/general_providers.dart';
import 'package:online_learning_app/screens/on_boarding_screen/buttons/skip_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreensPageView extends ConsumerWidget {
  const OnboardingScreensPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        Container(
          alignment: const Alignment(0, 0.85),
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
        ),
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
        child: Column(
          children: [
            const SizedBox(height: 90),
            const SkipButton(),
            const SizedBox(height: 19),
            SvgPicture.asset('$onBoardingIllustrationsPath-1.svg'),
            const SizedBox(height: 38),
            const Text(
              'Numerous free',
              style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w700, fontSize: 22),
            ),
            const Text(
              'trial courses',
              style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w700, fontSize: 22),
            ),
            const SizedBox(height: 10),
            const Text(
              'Free courses for you to',
              style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w400, fontSize: 16),
            ),
            const Text(
              'find your way to learning',
              style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w400, fontSize: 16),
            ),
            const SizedBox(height: 60),
          ],
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
        child: Column(
          children: [
            const SizedBox(height: 90),
            const SkipButton(),
            const SizedBox(height: 19),
            SvgPicture.asset('$onBoardingIllustrationsPath-2.svg'),
            const SizedBox(height: 38),
            const Text(
              'Quick and easy',
              style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w700, fontSize: 22),
            ),
            const Text(
              'learning',
              style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w700, fontSize: 22),
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 60),
          ],
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
        child: Column(
          children: [
            const SizedBox(height: 142),
            SvgPicture.asset('$onBoardingIllustrationsPath-3.svg'),
            const SizedBox(height: 38),
            const Text(
              'Create your own',
              style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w700, fontSize: 22),
            ),
            const Text(
              'study plan',
              style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w700, fontSize: 22),
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 100),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                PrimaryButton(
                  onPressed: () {},
                  height: 50,
                  width: 160,
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
                const SizedBox(width: 10),
                PrimaryButton(
                  onPressed: () {},
                  height: 50,
                  width: 160,
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
    );
  }
}
