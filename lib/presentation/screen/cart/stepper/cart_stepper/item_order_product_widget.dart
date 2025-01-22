import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/screen/cart/stepper/cart_stepper/info_order_product_widget.dart';
import 'package:hunty/presentation/widgets/app_thumbnail.dart';


class ItemOrderProductWidget extends StatelessWidget {
  final ProductModel itemProduct;
  final Function(ProductModel productRemove) onRemove;

  const ItemOrderProductWidget({
    super.key,
    required this.itemProduct,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Sizes.dimen_8),
      child: Row(
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
              child: InfoOrderProductWidget(itemProduct: itemProduct),
            ),
          ),
          IconButton(
            icon: SvgPicture.asset(IconsConstant.removeCircle),
            iconSize: Sizes.dimen_18,
            onPressed: () {
              onRemove(itemProduct);
            },
          ),
        ],
      ),
    );
  }
}
