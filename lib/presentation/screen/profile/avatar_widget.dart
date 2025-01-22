import 'package:flutter/material.dart';
import 'package:hunty/common/constants/image_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.dimen_150,
      decoration: const BoxDecoration(color: kColorWhite),
      child: Stack(
        children: [
          Container(
            height: Sizes.dimen_100,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(right: Sizes.dimen_16),
            decoration: const BoxDecoration(color: kColorYellow),
            child: AppTextNormal(
              text: Languages.edit,
              textSize: Sizes.dimen_16,
              textColor: kColorTextButton,
              alignment: Alignment.centerRight,
              onPressed: () {},
            ),
          ),
          Positioned(
            top: Sizes.dimen_50,
            left: MediaQuery
                .of(context)
                .size
                .width / 2 - Sizes.dimen_50,
            child: CircleAvatar(
              radius: Sizes.dimen_50,
              backgroundColor: kColorTransparent,
              child: Image.asset(ImageConstant.avatarProfile),
            ),
          ),
        ],
      ),
    );
  }
}
