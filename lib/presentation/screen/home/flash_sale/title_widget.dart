import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/theme/theme.dart';


class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          style: PrimaryFont.bold(Sizes.dimen_16).copyWith(color: kColorTextPrimary),
          children: [
            TextSpan(
              text: Languages.homePrefixFlashSale.translator(context),
              style: PrimaryFont.bold(Sizes.dimen_16).copyWith(color: kColorTextPrimary),
            ), // Phần đầu văn bản
            WidgetSpan(
              child: SvgPicture.asset(IconsConstant.flashSale),
            ),
            TextSpan(
              text: Languages.homeSuffixFlashSale.translator(context),
              style: PrimaryFont.bold(Sizes.dimen_16).copyWith(color: kColorTextPrimary),
            ), // Phần còn lại của văn bản
          ],
        ),
      ),
    );
  }
}
