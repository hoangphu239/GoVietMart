import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/screen/details_product/diagonal_clipper.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return Container(
      height: Sizes.dimen_55,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kColorGrayShadow, // Màu bóng
            spreadRadius: Sizes.dimen_3, // Độ rộng bóng
            blurRadius: Sizes.dimen_6, // Độ mờ bóng
            offset: Offset(Sizes.dimen_2, Sizes.dimen_3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(color: kColorYellow),
          ClipPath(
            clipper: DiagonalClipper(width: widthScreen),
            child: Container(
              width: widthScreen,
              color: kColorWhite,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(IconsConstant.chat),
                      const SizedBox(width: 8),
                      AppTextBold(
                        text: Languages.chatToShop,
                        textColor: kColorYellow,
                        textSize: Sizes.dimen_16,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(IconsConstant.addCart),
                      const SizedBox(width: 8),
                      AppTextBold(
                        text: Languages.addToCart,
                        textColor: kColorTextButton,
                        textSize: Sizes.dimen_16,
                        onPressed: () {
                          Navigator.of(context).pushNamed(RouteList.cartStepper);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
