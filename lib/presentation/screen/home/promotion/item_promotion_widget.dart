import 'package:flutter/material.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/promotion_model.dart';
import 'package:hunty/presentation/screen/home/promotion/name_promotion_widget.dart';
import 'package:hunty/presentation/widgets/app_thumbnail.dart';

class ItemPromotionWidget extends StatelessWidget {
  final PromotionModel itemPromotion;
  final double width, height;

  const ItemPromotionWidget({
    super.key,
    required this.itemPromotion,
    this.width = double.infinity,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppThumbnail(
            imageName: itemPromotion.image,
            width: width,
            height: height,
            onPress: (index) {
              Navigator.of(context, rootNavigator: true)
                  .pushNamed(RouteList.detailsPromotion);
            },
          ),
          const SizedBox(height: Sizes.dimen_8),
          NamePromotionWidget(itemPromotion: itemPromotion),
        ],
      ),
      onTap: () {
        Navigator.of(context, rootNavigator: true)
            .pushNamed(RouteList.detailsPromotion);
      },
    );
  }
}
