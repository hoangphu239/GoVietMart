import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/screen/cart/stepper/complete_stepper/list_order_details_widget.dart';
import 'package:hunty/presentation/widgets/app_divider.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';


class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppTextNormal(
          text: Languages.cartOrderDetailsTitle,
          textSize: Sizes.dimen_16,
          textColor: kColorTextSecondary,
        ),
        SizedBox(height: Sizes.dimen_10),
        ListOrderDetailsWidget(),
        SizedBox(height: Sizes.dimen_12),
        AppDivider(),
        SizedBox(height: Sizes.dimen_12),
      ],
    );
  }
}
