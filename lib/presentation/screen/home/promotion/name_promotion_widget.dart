import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/promotion_model.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class NamePromotionWidget extends StatelessWidget {
  final PromotionModel itemPromotion;

  const NamePromotionWidget({super.key, required this.itemPromotion});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextBold(
          text: itemPromotion.name,
          textSize: Sizes.dimen_16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_pin,
              color: kColorGraySecondary,
              size: Sizes.dimen_16,
            ),
            const SizedBox(width: Sizes.dimen_4),
            AppTextNormal(
              text: itemPromotion.distance ?? "",
              textSize: Sizes.dimen_14,
              textColor: kColorTextSecondary,
            ),
          ],
        )
      ],
    );
  }
}
