import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning_app/buttons/digit_button.dart';
import 'package:online_learning_app/constants.dart';
import 'package:online_learning_app/responsive.dart';
import 'package:online_learning_app/screens/confirm_phone_number_screen/widgets/success_dialog.dart';

class ConfirmPhoneNumberScreen extends HookWidget {
  const ConfirmPhoneNumberScreen({Key? key}) : super(key: key);

  static const routeName = '/confirm-phone-number-screen';

  @override
  Widget build(BuildContext context) {
    final phoneNumber = ModalRoute.of(context)?.settings.arguments as String?;
    final verificationCodeListNotifier = useState<List<int>>([]);
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizeConfig.verticalHeight(80),
                const Text(
                  'Verify Phone',
                  style: TextStyle(color: titleTextColor, fontWeight: FontWeight.w500, fontSize: 18),
                ),
                SizeConfig.verticalHeight(60),
                Text(
                  'Code is sent to $phoneNumber ',
                  style: const TextStyle(
                    color: sublitleTextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                SizeConfig.verticalHeight(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < 4; ++i)
                      Container(
                        height: SizeConfig.height(50),
                        width: SizeConfig.width(50),
                        decoration: BoxDecoration(
                          border: Border.all(color: descriptionTextColor),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        alignment: Alignment.center,
                        child: verificationCodeListNotifier.value.length > i
                            ? Text(
                                '${verificationCodeListNotifier.value[i]}',
                                style: const TextStyle(
                                  color: titleTextColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                ),
                              )
                            : null,
                      ),
                  ],
                ),
                SizeConfig.verticalHeight(60),
                TextButton(
                  onPressed: () {
                    showSuccessDialog(context);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    primary: Colors.white,
                    backgroundColor: primaryColor,
                  ),
                  child: const Text(
                    'Verify and Create Account',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizeConfig.verticalHeight(50),
                Wrap(
                  children: [
                    for (int i = 1; i <= 9; i++)
                      DigitButton(
                        onPressed: () {
                          if (verificationCodeListNotifier.value.length < 4) {
                            verificationCodeListNotifier.value = [...verificationCodeListNotifier.value, i];
                          }
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
                        if (verificationCodeListNotifier.value.length < 4) {
                          verificationCodeListNotifier.value = [...verificationCodeListNotifier.value, 0];
                        }
                      },
                      child: const Text('0', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                    ),
                    DigitButton(
                      onPressed: () {
                        if (verificationCodeListNotifier.value.isNotEmpty) {
                          final copyWithoutLastDigit = [...verificationCodeListNotifier.value];
                          copyWithoutLastDigit.removeLast();

                          verificationCodeListNotifier.value = copyWithoutLastDigit;
                        }
                      },
                      child: const Icon(FontAwesomeIcons.deleteLeft),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(-0.8, -0.83),
            child: SizedBox(
              height: SizeConfig.height(60),
              width: SizeConfig.height(60),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                  primary: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close, size: SizeConfig.height(30)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> showSuccessDialog(BuildContext context) {
    return showDialog(
      context: context,
      useSafeArea: false,
      builder: (context) => const SuccessDialog(),
    );
  }
}
