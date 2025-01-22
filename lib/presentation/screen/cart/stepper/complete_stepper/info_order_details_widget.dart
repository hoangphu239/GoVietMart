import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class InfoOrderDetailsWidget extends StatelessWidget {
  final ProductModel itemProduct;

  const InfoOrderDetailsWidget({super.key, required this.itemProduct});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.dimen_90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppTextNormal(
            text: itemProduct.name,
            textSize: Sizes.dimen_14,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '575.000 VND ',
                  style: PrimaryFont.bold(Sizes.dimen_14)
                      .copyWith(color: kColorTextPrimary),
                ),
                TextSpan(
                  text: '(900.000 VND)',
                  style: PrimaryFont.regular(Sizes.dimen_14).copyWith(
                    color: kColorTextSecondary,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              AppTextNormal(
                text: 'Quantity: ',
                textColor: kColorTextSecondary,
                textSize: Sizes.dimen_14,
              ),
              AppTextNormal(
                text: '1',
                textColor: kColorTextSecondary,
                textSize: Sizes.dimen_14,
              ),
            ],
          )
        ],
      ),
    );
  }
}
