import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/widgets/app_thumbnail.dart';

import 'info_product_widget.dart';

class ItemProductionWidget extends StatelessWidget {
  final ProductModel itemProduct;
  final bool isShowSale, isShowRating;
  final Function() onPressAddCart;

  const ItemProductionWidget({
    super.key,
    this.isShowSale = false,
    this.isShowRating = false,
    required this.itemProduct,
    required this.onPressAddCart,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          AppThumbnail(
            imageName: itemProduct.image,
            width: Sizes.dimen_90,
            height: Sizes.dimen_90,
            onPress: (index) {
              Navigator.of(context).pushNamed(RouteList.detailsProduct);
            },
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: Sizes.dimen_15),
              child:  InfoProductWidget(
                  isShowSale : isShowSale,
                  isShowRating : isShowRating,
                  itemProduct: itemProduct
              ),
            )
          ),
          IconButton(
            icon: SvgPicture.asset(IconsConstant.cart),
            onPressed: () {
              onPressAddCart();
            },
          ),
        ],
      ),
      onTap: () {
        Navigator.of(context).pushNamed(RouteList.detailsProduct);
      },
    );
  }
}
