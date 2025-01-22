import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/screen/cart/stepper/complete_stepper/item_order_details_widget.dart';
import 'package:hunty/presentation/widgets/app_divider.dart';

class ListOrderDetailsWidget extends StatefulWidget {

  const ListOrderDetailsWidget({super.key});

  @override
  State<ListOrderDetailsWidget> createState() =>
      _ListOrderDetailsWidgetState();
}

class _ListOrderDetailsWidgetState extends State<ListOrderDetailsWidget> {
  final List<ProductModel> products = getProductsOfShop().sublist(0, 2);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ItemOrderDetailsWidget(
          itemProduct: products[index],
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: Sizes.dimen_16,
        child: AppDivider(),
      ),
    );
  }
}
