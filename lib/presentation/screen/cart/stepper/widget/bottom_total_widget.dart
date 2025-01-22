import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/widgets/app_button.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class BottomTotalWidget extends StatelessWidget {
  final Function() onPress;
  const BottomTotalWidget({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: Sizes.dimen_14,
        right: Sizes.dimen_14,
        top: Sizes.dimen_14,
        bottom: Sizes.dimen_20,
      ),
      decoration: const BoxDecoration(
        color: kColorWhite,
        boxShadow: [
          BoxShadow(
            color: kColorGrayShadow, // Màu bóng
            spreadRadius: Sizes.dimen_3, // Độ rộng bóng
            blurRadius: Sizes.dimen_6, // Độ mờ bóng
            offset: Offset(Sizes.dimen_2, Sizes.dimen_3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTextBold(
                text: Languages.cartTotal,
                textSize: Sizes.dimen_16,
              ),
              const AppTextBold(
                text: '575.000 VND',
                textSize: Sizes.dimen_20,
              ),
            ],
          ),
          const SizedBox(height: Sizes.dimen_10),
          SizedBox(
            width: double.infinity,
            child: AppButton(
              text: Languages.cartNext,
              onPressed: () {
                onPress();
              },
            ),
          ),
        ],
      ),
    );
  }
}
