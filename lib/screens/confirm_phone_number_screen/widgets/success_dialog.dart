import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning_app/constants.dart';
import 'package:online_learning_app/responsive.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      backgroundColor: sublitleTextColor,
      child: SizedBox(
        height: double.infinity,
        child: Align(
          alignment: const Alignment(0, 0),
          child: Container(
            height: SizeConfig.height(300),
            width: SizeConfig.height(300),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                SizeConfig.verticalHeight(48),
                Container(
                  height: SizeConfig.height(65),
                  width: SizeConfig.width(65),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor,
                  ),
                  alignment: Alignment.center,
                  child: const Icon(FontAwesomeIcons.check, size: 30, color: Colors.white),
                ),
                SizeConfig.verticalHeight(20),
                const Text(
                  'Success',
                  style: TextStyle(
                    color: titleTextColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                SizeConfig.verticalHeight(10),
                const Text(
                  'Congratulations, you have\ncompleted your registration!',
                  style: TextStyle(
                    color: descriptionTextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                SizeConfig.verticalHeight(15),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.width(110), vertical: 12),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Done',
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
        ),
      ),
    );
  }
}
