import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/promotion_model.dart';
import 'package:hunty/presentation/screen/home/promotion/item_promotion_widget.dart';
import 'package:hunty/presentation/widgets/app_padding.dart';

class ListRecommendPromotionWidget extends StatelessWidget {
  const ListRecommendPromotionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PromotionModel> promotions = getAllRecommendedPromotions();
    return AppPadding(
      top: Sizes.dimen_8,
      bottom: Sizes.dimen_24,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: promotions.length,
          itemBuilder: (context, index) {
            return ItemPromotionWidget(
              itemPromotion: promotions[index],
              height: Sizes.dimen_210,
            );
          },
          separatorBuilder: (context, index)
          => const SizedBox(height: Sizes.dimen_16),
        ),
    );
  }
}

