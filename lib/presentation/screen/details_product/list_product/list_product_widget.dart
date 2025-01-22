import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/screen/details_product/list_product/item_product_widget.dart';
import 'package:hunty/presentation/screen/home/flash_sale/see_all_widget.dart';
import 'package:hunty/presentation/widgets/app_padding.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ListProductWidget extends StatelessWidget {
  final String title;

  const ListProductWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> products = getViewedProducts();
    return AppPadding(
      top: Sizes.dimen_10,
      child: Column(
        children: [
          Row(
            children: [
              AppTextBold(
                text: title,
                textColor: kColorTextPrimary,
                textSize: Sizes.dimen_16,
              ),
              const Spacer(),
              SeeAllTitle(
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: Sizes.dimen_14),
          SizedBox(
            height: Sizes.dimen_260,
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ItemProductWidget(itemProduct: products[index]);
              },
              separatorBuilder: (context, index) => const SizedBox(width: Sizes.dimen_16),
            ),
          ),
        ],
      ),
    );
  }
}
