import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/screen/home/viewed_product/item_viewed_product_widget.dart';


class ListViewedProductWidget extends StatelessWidget {
  const ListViewedProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> products = getViewedProducts();
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ItemViewedProductWidget(itemProduct: products[index]);
      },
      separatorBuilder: (context, index) => const SizedBox(width: Sizes.dimen_16),
    );
  }
}
