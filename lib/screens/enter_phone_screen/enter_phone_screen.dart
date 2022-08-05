import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning_app/buttons/digit_button.dart';
import 'package:online_learning_app/buttons/primary_button.dart';
import 'package:online_learning_app/constants.dart';
import 'package:online_learning_app/responsive.dart';

class EnterPhoneScreen extends HookWidget {
  const EnterPhoneScreen({Key? key}) : super(key: key);

  static const routeName = '/enter-phone-number-screen/';

  @override
  Widget build(BuildContext context) {
    final phoneNumberNotifier = useState<String>('+');
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizeConfig.verticalHeight(70),
            const Text(
              'Continue with Phone',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: titleTextColor,
              ),
            ),
            SizeConfig.verticalHeight(35),
            SvgPicture.asset('$illustrationPath-4.svg'),
            SizeConfig.verticalHeight(40),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizeConfig.verticalHeight(25),
                      const Text(
                        'Enter Your  Phone Number',
                        style: TextStyle(
                          color: sublitleTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizeConfig.verticalHeight(15),
                      Container(
                        height: SizeConfig.height(50),
                        width: SizeConfig.width(325),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: descriptionTextColor),
                        ),
                        child: Row(
                          children: [
                            SizeConfig.horizontalWidth(30),
                            SizedBox(
                              width: SizeConfig.width(160),
                              child: Text(
                                phoneNumberNotifier.value,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: titleTextColor,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const Spacer(),
                            PrimaryButton(
                              onPressed: () {},
                              height: SizeConfig.height(50),
                              width: SizeConfig.width(125),
                              backgroundColor: primaryColor,
                              child: const Text(
                                'Continue',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Wrap(
                        children: [
                          for (int i = 1; i <= 9; i++)
                            DigitButton(
                              onPressed: () {
                                addDigitToPhoneNumber(phoneNumberNotifier, '$i');
                              },
                              child: Text('$i', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                            ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(height: SizeConfig.size.width / 4, width: SizeConfig.size.width / 3),
                          DigitButton(
                            onPressed: () {
                              addDigitToPhoneNumber(phoneNumberNotifier, '0');
                            },
                            child: const Text('0', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                          ),
                          DigitButton(
                            onPressed: () {
                              removeLastCharacter(phoneNumberNotifier);
                            },
                            child: const Icon(FontAwesomeIcons.deleteLeft),
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

  void addDigitToPhoneNumber(ValueNotifier<String> phoneNumberNotifier, String digit) {
    final List<int> whereToAddSpaces = [3, 7, 11];
    final bool mustAddSpace = whereToAddSpaces.contains(phoneNumberNotifier.value.length);
    final bool stayInLimits = phoneNumberNotifier.value.length <= 15;
    if (mustAddSpace) phoneNumberNotifier.value += ' ';
    if (stayInLimits) phoneNumberNotifier.value += digit;
  }

  void removeLastCharacter(ValueNotifier<String> phoneNumberNotifier) {
    String phoneNumber = phoneNumberNotifier.value;
    List<String> phoneNumberAsList = phoneNumber.split("");
    final bool stayInLimits = phoneNumberNotifier.value.length >= 2;
    if (phoneNumberAsList.isNotEmpty && stayInLimits) {
      phoneNumberAsList.removeLast();
      phoneNumberNotifier.value = phoneNumberAsList.join();
    }
  }
}
