import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ShopManagementWidget extends StatelessWidget {
  final Function() onPress;

  const ShopManagementWidget({
    super.key,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Sizes.dimen_16, vertical: Sizes.dimen_20),
      height: Sizes.dimen_100,
      child: DottedBorder(
        dashPattern: const [4, 2],
        color: kColorYellow,
        borderType: BorderType.RRect,
        radius: const Radius.circular(Sizes.dimen_4),
        child: GestureDetector(
          child: Container(
            color: kColorYellowLight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(IconsConstant.shopManagement),
                const SizedBox(width: Sizes.dimen_8),
                const AppTextBold(
                  text: Languages.shopManagement,
                  textSize: Sizes.dimen_16,
                  textColor: kColorYellow,
                ),
              ],
            ),
          ),
          onTap: () {
            onPress();
          },
        ),
      ),
    );
  }
}
