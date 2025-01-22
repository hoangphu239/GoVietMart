import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/screen/cart/stepper/complete_stepper/info_order_details_widget.dart';
import 'package:hunty/presentation/widgets/app_thumbnail.dart';


class ItemOrderDetailsWidget extends StatelessWidget {
  final ProductModel itemProduct;

  const ItemOrderDetailsWidget({
    super.key,
    required this.itemProduct,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppThumbnail(
          imageName: itemProduct.image,
          width: Sizes.dimen_90,
          height: Sizes.dimen_90,
          onPress: (index) {},
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: Sizes.dimen_10),
            child: InfoOrderDetailsWidget(itemProduct: itemProduct),
          ),
        ),
      ],
    );
  }
}
