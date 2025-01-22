import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/theme/theme.dart';

class AppTextTitle extends StatelessWidget {
  final String title;

  const AppTextTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title.translator(context),
      style:
          PrimaryFont.bold(Sizes.dimen_24).copyWith(color: kColorTextPrimary),
    );
  }
}

class AppTextNormal extends StatelessWidget {
  final String text;
  final Alignment alignment;
  final double? textSize;
  final Color? textColor;
  final int maxLine;
  final Function()? onPressed;

  const AppTextNormal({
    super.key,
    required this.text,
    this.maxLine = 1,
    this.alignment = Alignment.centerLeft,
    this.textSize = Sizes.dimen_16,
    this.textColor = kColorTextPrimary,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: InkWell(
        onTap: onPressed,
        child: Text(text.translator(context),
          maxLines: maxLine,
          overflow: TextOverflow.ellipsis,
          style: PrimaryFont.regular(textSize!).copyWith(color: textColor),
        ),
      ),
    );
  }
}

class AppTextBold extends StatelessWidget {
  final String text;
  final int maxLine;
  final Alignment alignment;
  final double? textSize;
  final Color? textColor;
  final Function()? onPressed;

  const AppTextBold({
    super.key,
    required this.text,
    this.maxLine = 1,
    this.alignment = Alignment.centerLeft,
    this.textSize = Sizes.dimen_16,
    this.textColor = kColorTextPrimary,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return

      Align(
      alignment: alignment,
      child: InkWell(
        onTap: onPressed,
        child: Text(
          text.translator(context),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: PrimaryFont.bold(textSize!).copyWith(color: textColor),
        ),
      ),
    );
  }
}
