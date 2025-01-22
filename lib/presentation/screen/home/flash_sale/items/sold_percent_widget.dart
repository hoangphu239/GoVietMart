import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SoldPercentWidget extends StatelessWidget {
  final ProductModel itemProduct;

  const SoldPercentWidget({super.key, required this.itemProduct});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      padding: EdgeInsets.zero,
      width: Sizes.dimen_110,
      lineHeight: Sizes.dimen_18,
      percent: itemProduct.percent_sold,
      center: AppTextBold(
        alignment: Alignment.center,
        text: 'Sold ${itemProduct.num_sold}',
        textSize: Sizes.dimen_10,
        textColor: kColorWhite,
      ),
      barRadius: const Radius.circular(Sizes.dimen_10),
      progressColor: kColorPink,
      backgroundColor: kColorGrayPrimary,
    );
  }
}
