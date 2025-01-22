import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/theme/theme.dart';

class AppOutlineButton extends StatelessWidget {
  final Widget? icon;
  final String text;
  final double textSize;
  final double paddingLeft;
  final double paddingTop;
  final double paddingRight;
  final double paddingBottom;
  final Function() onPressed;

  const AppOutlineButton({
    super.key,
    this.icon,
    required this.text,
    required this.onPressed,
    this.textSize = Sizes.dimen_16,
    this.paddingLeft = Sizes.dimen_0,
    this.paddingTop = Sizes.dimen_14,
    this.paddingRight = Sizes.dimen_0,
    this.paddingBottom = Sizes.dimen_14,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: icon != null ? icon! : const SizedBox.shrink(),
      label: Text(
        text,
        style: PrimaryFont.regular(textSize).copyWith(color: kColorYellow),
      ),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: kColorYellow, width: Sizes.dimen_1),
        padding: EdgeInsets.only(
          left: paddingLeft,
          top: paddingTop,
          right: paddingRight,
          bottom: paddingBottom,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.dimen_5),
        ),
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  final String text;
  final double paddingTop;
  final double paddingBottom;
  final Function() onPressed;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.paddingTop = Sizes.dimen_10,
    this.paddingBottom = Sizes.dimen_10,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: kColorYellow,
        padding: EdgeInsets.only(
          top: paddingTop,
          bottom: paddingBottom,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.dimen_5),
        ),
      ),
      child: Text(
        text.translator(context),
        style: PrimaryFont.bold(Sizes.dimen_16).copyWith(color: kColorTextButton),
      ),
    );
  }
}

class AppGrayButton extends StatelessWidget {
  final String text;
  final double paddingTop;
  final double paddingBottom;
  final Function() onPressed;

  const AppGrayButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.paddingTop = Sizes.dimen_10,
    this.paddingBottom = Sizes.dimen_10,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: kColorGrayPrimary,
        padding: EdgeInsets.only(
          top: paddingTop,
          bottom: paddingBottom,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.dimen_3),
        ),
      ),
      child: Text(
        text.translator(context),
        style: PrimaryFont.bold(Sizes.dimen_16).copyWith(color: kColorTextPrimary),
      ),
    );
  }
}
