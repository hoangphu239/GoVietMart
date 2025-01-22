import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class PaymentFeeWidget extends StatelessWidget {
  const PaymentFeeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppTextNormal(
          text: Languages.cartPayment,
          textSize: Sizes.dimen_16,
          textColor: kColorTextSecondary,
        ),
        SizedBox(height: Sizes.dimen_12),
        AppTextNormal(
          text: Languages.cartCashOnDelivery,
          textSize: Sizes.dimen_16,
          textColor: kColorTextPrimary,
        ),
        SizedBox(height: Sizes.dimen_12),
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
        SizedBox(height: Sizes.dimen_12),
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
        SizedBox(height: Sizes.dimen_12),
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
        SizedBox(height: Sizes.dimen_12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTextBold(
              text: Languages.cartTotal,
              textSize: Sizes.dimen_16,
              textColor: kColorTextSecondary,
            ),
            AppTextBold(
              text: '575.000 VND',
              textSize: Sizes.dimen_16,
              textColor: kColorTextPrimary,
            ),
          ],
        )
      ],
    );
  }
}
