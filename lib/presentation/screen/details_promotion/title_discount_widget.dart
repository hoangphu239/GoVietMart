import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_divider.dart';
import 'package:hunty/presentation/widgets/app_text.dart';

class TitleDiscountWidget extends StatelessWidget {
  const TitleDiscountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.dimen_14,
        vertical: Sizes.dimen_8,
      ),
      child: const Column(
        children: [
          AppDivider(),
          SizedBox(height: Sizes.dimen_10),
          AppTextBold(
            text: 'Lotte Mart discount 30%',
            textSize: Sizes.dimen_18,
          ),
          SizedBox(height: Sizes.dimen_10),
        ],
      ),
    );
  }
}
