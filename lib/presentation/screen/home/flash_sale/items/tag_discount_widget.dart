import 'package:flutter/material.dart';
import 'package:hunty/common/constants/image_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class TagDiscountWidget extends StatelessWidget {
  final ProductModel itemProduct;
  const TagDiscountWidget({super.key, required this.itemProduct});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        width: Sizes.dimen_35,
        height: Sizes.dimen_26,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(ImageConstant.discount).image,
          ),
        ),
        child: AppTextBold(
          alignment: Alignment.center,
          text: '${itemProduct.discount_percent}%',
          textSize: Sizes.dimen_9,
          textColor: kColorTextButton,
        ),
      ),
    );
  }
}
