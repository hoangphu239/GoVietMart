import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/widgets/app_divider.dart';
import 'item_production_widget.dart';

class ListProductionWidget extends StatelessWidget {
  final bool shrinkWrap, isShowSale, isShowRating;
  final Function() onAddCart;

  const ListProductionWidget({
    super.key,
    required this.onAddCart,
    this.shrinkWrap = false,
    this.isShowSale = false,
    this.isShowRating = false,
  });

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> products = getProductsOfShop();
    return Container(
      padding: const EdgeInsets.all(Sizes.dimen_14),
      child: ListView.separated(
        shrinkWrap: shrinkWrap,
        physics: shrinkWrap ? const NeverScrollableScrollPhysics(): const ScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ItemProductionWidget(
            itemProduct: products[index],
            isShowSale: isShowSale,
            isShowRating: isShowRating,
            onPressAddCart: () {
              onAddCart();
            },
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: Sizes.dimen_16,
          child: AppDivider(),
        ),
      ),
    );
  }
}
