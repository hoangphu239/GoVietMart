import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/screen/details_product/item_product_info_widget.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ProductInfoWidget extends StatelessWidget {
  final String category, brand, providedBy, manufactured;

  const ProductInfoWidget({
    super.key,
    required this.category,
    required this.brand,
    required this.providedBy,
    required this.manufactured,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_16),
      child: Column(
        children: [
          const AppTextNormal(
            text: Languages.productInformation,
            textColor: kColorTextSecondary,
            textSize: Sizes.dimen_16,
          ),
          ItemProductInfoWidget(
            title: Languages.categories,
            value: category,
          ),
          ItemProductInfoWidget(
            title: Languages.providedBy,
            value: providedBy,
          ),
          ItemProductInfoWidget(
            title: Languages.brand,
            value: brand,
            changeColorValue: true,
            onPressValue: () {},
          ),
          ItemProductInfoWidget(
            title: Languages.manufactured,
            value: manufactured,
          ),
        ],
      ),
    );
  }
}
