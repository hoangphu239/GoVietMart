import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class SeeAllTitle extends StatelessWidget {
  final Function() onPressed;

  const SeeAllTitle({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: const AppTextNormal(
        text: Languages.homeSeeAll,
        textSize: Sizes.dimen_14,
        textColor: kColorTextSecondary,
      ),
      onTap: () {
        onPressed();
      },
    );
  }
}
