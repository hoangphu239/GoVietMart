import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/theme/theme.dart';

class AppDiscountPrice extends StatelessWidget {
  final String price, discountPrice;
  final double textSizePrice, textSizeDiscountPrice;

  const AppDiscountPrice({
    super.key,
    required this.price,
    required this.discountPrice,
    this.textSizePrice = Sizes.dimen_15,
    this.textSizeDiscountPrice = Sizes.dimen_15,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "$discountPrice  ",
            style: PrimaryFont.bold(textSizeDiscountPrice)
                .copyWith(color: kColorTextPrimary),
          ),
          TextSpan(
            text: price,
            style: PrimaryFont.regular(textSizePrice).copyWith(
              color: kColorTextSecondary,
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ],
      ),
    );
  }
}
