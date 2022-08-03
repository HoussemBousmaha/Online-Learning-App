import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_learning_app/constants.dart';
import 'package:online_learning_app/screens/on_boarding_screen/buttons/skip_button.dart';
import 'package:online_learning_app/screens/on_boarding_screen/widgets/onboarding_navigation_row.dart';

class OnboardingScreensPageView extends HookWidget {
  const OnboardingScreensPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedIndexNotifier = useState<int>(0);
    return Stack(
      alignment: Alignment.center,
      children: [
        PageView(
          physics: const ClampingScrollPhysics(),
          onPageChanged: (value) {
            selectedIndexNotifier.value = value;
          },
          children: const [
            OnboardingScreen1(),
            OnboardingScreen2(),
          ],
        ),
        OnboardingNavigationRow(
          selectedIndex: selectedIndexNotifier.value,
          pageCount: 2,
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
