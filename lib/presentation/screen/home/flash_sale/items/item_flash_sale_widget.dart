import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/screen/home/flash_sale/items/sold_percent_widget.dart';
import 'package:hunty/presentation/screen/home/flash_sale/items/tag_discount_widget.dart';
import 'package:hunty/presentation/widgets/app_image_product.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ItemFlashSaleWidget extends StatelessWidget {
  final ProductModel itemProduct;

  const ItemFlashSaleWidget({super.key, required this.itemProduct});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            AppImageProduct(
              width: Sizes.dimen_110,
              height: Sizes.dimen_130,
              padding: Sizes.dimen_14,
              imageName: itemProduct.image,
            ),
            TagDiscountWidget(itemProduct: itemProduct),
          ],
        ),
        const SizedBox(height: Sizes.dimen_12),
        SoldPercentWidget(itemProduct: itemProduct),
        const SizedBox(height: Sizes.dimen_6),
        AppTextBold(
          text: itemProduct.price,
          textSize: Sizes.dimen_12,
          textColor: kColorTextPrimary,
        ),
      ],
    );
  }
}
