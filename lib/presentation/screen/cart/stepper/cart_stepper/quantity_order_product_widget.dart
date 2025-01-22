import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_box_shadow.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class QuantityOrderProductWidget extends StatefulWidget {
  const QuantityOrderProductWidget({super.key});

  @override
  State<QuantityOrderProductWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityOrderProductWidget> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return AppBoxShadow(
      width: Sizes.dimen_85,
      height: Sizes.dimen_28,
      radius: Sizes.dimen_3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            child: const AppTextNormal(
              text: '-',
              textColor: kColorTextSecondary,
              textSize: Sizes.dimen_18,
            ),
            onTap: () {
              setState(() {
                if (quantity > 1) quantity--;
              });
            },
          ),
          AppTextNormal(
            text: quantity.toString(),
            textColor: kColorTextPrimary,
            textSize: Sizes.dimen_16,
          ),
          InkWell(
            child: const AppTextNormal(
              text: '+',
              textColor: kColorTextSecondary,
              textSize: Sizes.dimen_18,
            ),
            onTap: () {
              setState(
                () {
                  quantity++;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
