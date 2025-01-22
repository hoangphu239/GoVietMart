import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_divider.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class FeeInfoWidget extends StatelessWidget {
  const FeeInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: Sizes.dimen_10),
        AppDivider(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.dimen_14,
            vertical: Sizes.dimen_10,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppTextNormal(
                    text: Languages.cartFee,
                    textSize: Sizes.dimen_16,
                    textColor: kColorTextSecondary,
                  ),
                  AppTextNormal(
                    text: '1.000.000 VND',
                    textSize: Sizes.dimen_16,
                    textColor: kColorTextPrimary,
                  ),
                ],
              ),
              SizedBox(height: Sizes.dimen_10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppTextNormal(
                    text: Languages.cartDeliveryFee,
                    textSize: Sizes.dimen_16,
                    textColor: kColorTextSecondary,
                  ),
                  AppTextNormal(
                    text: '20.000 VND',
                    textSize: Sizes.dimen_16,
                    textColor: kColorTextPrimary,
                  ),
                ],
              ),
              SizedBox(height: Sizes.dimen_10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppTextNormal(
                    text: Languages.cartPacketFee,
                    textSize: Sizes.dimen_16,
                    textColor: kColorTextSecondary,
                  ),
                  AppTextNormal(
                    text: '100.000 VND',
                    textSize: Sizes.dimen_16,
                    textColor: kColorTextPrimary,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
