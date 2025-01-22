import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/screen/home/flash_sale/items/tag_discount_widget.dart';
import 'package:hunty/presentation/widgets/app_image_product.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ItemProductWidget extends StatelessWidget {
  final ProductModel itemProduct;

  const ItemProductWidget({
    super.key,
    required this.itemProduct,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.dimen_150,
      height: Sizes.dimen_177,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              AppImageProduct(
                width: Sizes.dimen_150,
                height: Sizes.dimen_177,
                imageName: itemProduct.image,
              ),
              TagDiscountWidget(itemProduct: itemProduct),
            ],
          ),
          const SizedBox(height: Sizes.dimen_12),
          AppTextNormal(
            text: itemProduct.name,
            textSize: Sizes.dimen_14,
            maxLine: 2,
            textColor: kColorTextPrimary,
          ),
          const SizedBox(height: Sizes.dimen_5),
          AppTextBold(
            text: itemProduct.price,
            textSize: Sizes.dimen_14,
            textColor: kColorTextPrimary,
          ),
        ],
      ),
    );
  }
}
