import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/promotion_model.dart';
import 'package:hunty/presentation/screen/search/tabview/promotion/item_search_promotion_widger.dart';


class ListPromotionWidget extends StatelessWidget {
  const ListPromotionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<PromotionModel> searchPromotions = getSearchPromotions();

    return Container(
      padding: const EdgeInsets.only(top: Sizes.dimen_10),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: searchPromotions.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.9,
          crossAxisSpacing: Sizes.dimen_10,
          mainAxisSpacing: Sizes.dimen_20,
        ),
        itemBuilder: (BuildContext context, int index) {
          return ItemSearchPromotionWidget(itemPromotion: searchPromotions[index]);
        },
      ),
    );
  }
}
