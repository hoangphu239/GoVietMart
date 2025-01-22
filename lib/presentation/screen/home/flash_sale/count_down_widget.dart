import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/theme/theme.dart';
import 'package:slide_countdown/slide_countdown.dart';

class CountDownWidget extends StatefulWidget {
  const CountDownWidget({super.key});

  @override
  State<CountDownWidget> createState() => _CountDownWidgetState();
}

class _CountDownWidgetState extends State<CountDownWidget> {
  @override
  Widget build(BuildContext context) {
    return SlideCountdownSeparated(
      padding: const EdgeInsets.symmetric(
        vertical: Sizes.dimen_4,
        horizontal: Sizes.dimen_7,
      ),
      style:
          PrimaryFont.bold(Sizes.dimen_14).copyWith(color: kColorTextPrimary),
      separatorStyle:
          PrimaryFont.bold(Sizes.dimen_12).copyWith(color: kColorTextSecondary),
      duration: const Duration(hours: 23),
      separatorPadding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(Sizes.dimen_5)),
        color: kColorYellow,
      ),
    );
  }
}
