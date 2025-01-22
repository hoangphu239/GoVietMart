import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/screen/home/flash_sale/items/item_flash_sale_widget.dart';


class ListFlashSaleWidget extends StatelessWidget {
  const ListFlashSaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> products = getProducts();
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ItemFlashSaleWidget(itemProduct: products[index]);
      },
      separatorBuilder: (context, index) => const SizedBox(width: Sizes.dimen_16),
    );
  }
}
