import 'package:flutter/material.dart';
import 'package:hunty/common/constants/image_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_button.dart';
import 'package:hunty/presentation/widgets/app_circle_image.dart';
import 'package:hunty/presentation/widgets/app_padding.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ShopInfoWidget extends StatelessWidget {
  const ShopInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPadding(
        top: Sizes.dimen_14,
        bottom: Sizes.dimen_0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppCircularImage(
              name: ImageConstant.logoShop,
              width: Sizes.dimen_50,
              height: Sizes.dimen_50,
            ),
            const SizedBox(width: Sizes.dimen_4,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextBold(
                  text: 'Lotte Mart',
                  textSize: Sizes.dimen_16,
                ),
                AppTextNormal(
                  text: '1.4 km from you',
                  textSize: Sizes.dimen_14,
                  textColor: kColorTextSecondary,
                ),
              ],
            ),
            const Spacer(),
            AppOutlineButton(
              text: 'View shop',
              textSize: Sizes.dimen_14,
              paddingLeft: Sizes.dimen_10,
              paddingTop: Sizes.dimen_5,
              paddingRight: Sizes.dimen_14,
              paddingBottom: Sizes.dimen_5,
              onPressed: () => {
              },
            ),
          ],
        ),
    );
  }
}
