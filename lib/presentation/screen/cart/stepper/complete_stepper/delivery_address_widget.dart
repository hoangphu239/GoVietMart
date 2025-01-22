import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class DeliveryAddressWidget extends StatelessWidget {
  const DeliveryAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(Sizes.dimen_20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AppTextNormal(
                text: Languages.cartDeliveryAddress,
                textColor: kColorTextSecondary,
                textSize: Sizes.dimen_16,
              ),
              InkWell(
                child: const AppTextNormal(
                  text: Languages.cartChangeButton,
                  textColor: kColorTextLink,
                  textSize: Sizes.dimen_14,
                ),
                onTap: () {
                },
              ),
            ],
          ),
          const SizedBox(
            height: Sizes.dimen_16,
          ),
          const AppTextNormal(
            text: 'Kendy Le - 0909.090909',
            textColor: kColorTextPrimary,
            textSize: Sizes.dimen_16,
          ),
          const SizedBox(
            height: Sizes.dimen_4,
          ),
          const AppTextNormal(
            text: '123 Nguyễn Thị Minh Khai, ward 12, Dist.1, HCM',
            textColor: kColorTextSecondary,
            textSize: Sizes.dimen_14,
          ),
        ],
      ),
    );
  }
}
