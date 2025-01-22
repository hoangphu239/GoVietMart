import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/theme/theme.dart';

class AppError extends StatelessWidget {
  final String contentError;
  final DioExceptionType exceptionType;
  final Function() onPressed;
  const AppError({super.key, required this.contentError, required this.exceptionType, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_32),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            contentError.translator(context),
            textAlign: TextAlign.center,
            style: PrimaryFont.medium(Sizes.dimen_15).copyWith(color: kColorRed),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                onPressed: onPressed,
                text: Languages.retry.translator(context),
              ),
              const SizedBox(width: Sizes.dimen_20),
              Button(
                onPressed: () => {},
                text: Languages.feedback.translator(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool isEnabled;

  const Button({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kColorYellow,
        borderRadius: BorderRadius.all(
          Radius.circular(Sizes.dimen_20),
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: Sizes.dimen_10),
      child: InkWell(
        key: const ValueKey('main_button'),
        onTap: isEnabled ? onPressed : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.dimen_10, horizontal: Sizes.dimen_24),
          child: Text(
            text,
            style: PrimaryFont.medium(Sizes.dimen_14).copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
