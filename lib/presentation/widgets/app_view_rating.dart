import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class AppViewRating extends StatelessWidget {
  final double rating;
  final bool showViewRating;
  final MainAxisAlignment alignment;

  const AppViewRating({
    super.key,
    required this.rating,
    this.showViewRating = false,
    this.alignment = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        SvgPicture.asset(IconsConstant.favourite),
        const SizedBox(
          width: Sizes.dimen_5,
        ),
        AppTextNormal(
          text: rating.toString(),
          textSize: Sizes.dimen_14,
        ),
        const SizedBox(
          width: Sizes.dimen_8,
        ),
        showViewRating
            ? InkWell(
                child: const AppTextNormal(
                  text: Languages.viewRating,
                  textColor: kColorYellow,
                  textSize: Sizes.dimen_14,
                ),
                onTap: () {},
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
