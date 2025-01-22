import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/screen/cart/stepper/cart_stepper/quantity_order_product_widget.dart';
import 'package:hunty/presentation/widgets/app_discount_price.dart';
import 'package:hunty/presentation/widgets/app_text.dart';


class InfoOrderProductWidget extends StatelessWidget {
  final ProductModel itemProduct;

  const InfoOrderProductWidget({
    super.key,
    required this.itemProduct,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.dimen_90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppTextNormal(
            text: itemProduct.name,
            textSize: Sizes.dimen_13,
          ),
          const AppDiscountPrice(
            price: '(900.000 VND)',
            discountPrice: '575.000 VND',
          ),
          const QuantityOrderProductWidget(),
        ],
      ),
    );
  }
}
