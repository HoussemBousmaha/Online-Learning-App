import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:online_learning_app/constants.dart';
import 'package:online_learning_app/general_providers.dart';

class SkipButton extends ConsumerWidget {
  const SkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {
            ref.read(pageControllerProvider).animateToPage(
                  2,
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.ease,
                );
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10,
            ),
            child: Text(
              'Skip',
              style: TextStyle(
                color: sublitleTextColor,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
