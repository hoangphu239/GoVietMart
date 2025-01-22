import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/promotion_model.dart';
import 'package:hunty/presentation/screen/home/promotion/item_promotion_widget.dart';

class ListPromotionWidget extends StatelessWidget {
  final String titleSection;

  const ListPromotionWidget({super.key, required this.titleSection});

  @override
  Widget build(BuildContext context) {
    final List<PromotionModel> promotions =
        titleSection == 'Recommended Promotion'
            ? getRecommendedPromotions()
            : getPromotionsNearYou();
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemCount: promotions.length,
      itemBuilder: (context, index) {
        return ItemPromotionWidget(
          itemPromotion: promotions[index],
          width: Sizes.dimen_220,
          height: Sizes.dimen_135,
        );
      },
      separatorBuilder: (context, index) =>
          const SizedBox(width: Sizes.dimen_16),
    );
  }
}
