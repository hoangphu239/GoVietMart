import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ItemProductInfoWidget extends StatelessWidget {
  final String title, value;
  final bool changeColorValue;
  final Function()? onPressValue;

  const ItemProductInfoWidget({
    super.key,
    required this.title,
    required this.value,
    this.changeColorValue = false,
    this.onPressValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: Sizes.dimen_10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppTextNormal(
            text: title,
            textSize: Sizes.dimen_16,
            textColor: kColorTextPrimary,
          ),
          AppTextNormal(
            text: value,
            textSize: Sizes.dimen_16,
            textColor: changeColorValue? kColorYellow: kColorTextPrimary,
            onPressed: changeColorValue == true ? onPressValue: null,
          ),
        ],
      ),
    );
  }
}
