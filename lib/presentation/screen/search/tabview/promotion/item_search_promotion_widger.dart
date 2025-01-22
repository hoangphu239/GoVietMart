import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/promotion_model.dart';
import 'package:hunty/presentation/widgets/app_box_shadow.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ItemSearchPromotionWidget extends StatelessWidget {
  final PromotionModel itemPromotion;

  const ItemSearchPromotionWidget({super.key, required this.itemPromotion});

  @override
  Widget build(BuildContext context) {
    return AppBoxShadow(
      width: double.infinity,
      height: Sizes.dimen_60,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Sizes.dimen_6),
            child: Image.asset(
              itemPromotion.image,
              width: Sizes.dimen_60,
              height: Sizes.dimen_60,
            ),
          ),
          const SizedBox(width: Sizes.dimen_8,),
          Expanded(
            child: AppTextNormal(
              text: itemPromotion.name,
              textSize: Sizes.dimen_12,
              maxLine: 1,
              alignment: Alignment.centerLeft,
            ),
          ),
        ],
      ),
    );
  }
}
