import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/widgets/app_discount_price.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/presentation/widgets/app_view_rating.dart';
import 'package:hunty/theme/theme.dart';

class InfoProductWidget extends StatelessWidget {
  final ProductModel itemProduct;
  final bool isShowSale, isShowRating;

  const InfoProductWidget({
    super.key,
    required this.itemProduct,
    this.isShowSale = false,
    this.isShowRating = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.dimen_90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppTextNormal(
            text: itemProduct.name,
            textSize: Sizes.dimen_15,
          ),
          isShowSale && itemProduct.is_now_on_sale
              ? const AppTextNormal(
                  text: Languages.nowOnSale,
                  textColor: kColorRed,
                  textSize: Sizes.dimen_14,
                )
              : const SizedBox.shrink(),
          const AppDiscountPrice(
            price: '(900.000 VND)',
            discountPrice: '575.000 VND',
          ),
          isShowRating
              ? const AppViewRating(rating: 4.9)
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
