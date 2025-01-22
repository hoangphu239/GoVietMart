import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/screen/cart/stepper/cart_stepper/item_order_product_widget.dart';
import 'package:hunty/presentation/widgets/app_divider.dart';


class ListOrderProductionWidget extends StatefulWidget {
  final List<ProductModel> products;

  const ListOrderProductionWidget({super.key, required this.products});

  @override
  State<ListOrderProductionWidget> createState() =>
      _ListOrderProductionWidgetState();
}

class _ListOrderProductionWidgetState extends State<ListOrderProductionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.dimen_12,
        vertical: Sizes.dimen_10,
      ),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.products.length,
        itemBuilder: (context, index) {
          return ItemOrderProductWidget(
            itemProduct: widget.products[index],
            onRemove: (product) {
              setState(
                () {
                  widget.products.remove(product);
                  if (widget.products.isEmpty) {
                    Navigator.of(context).pop();
                  }
                },
              );
            },
          );
        },
        separatorBuilder: (context, index) => const AppDivider(),
      ),
    );
  }
}
