import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/screen/cart/stepper/cart_stepper/input_discount_code_widget.dart';
import 'package:hunty/presentation/widgets/app_button.dart';
import 'package:hunty/presentation/widgets/app_divider.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class DiscountCodeWidget extends StatefulWidget {
  const DiscountCodeWidget({super.key});

  @override
  State<DiscountCodeWidget> createState() => _DiscountCodeWidgetState();
}

class _DiscountCodeWidgetState extends State<DiscountCodeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.dimen_14,
      ),
      child: Column(
        children: <Widget>[
          const AppDivider(),
          const SizedBox(height: Sizes.dimen_10),
          const AppTextNormal(
            text: Languages.cartApplyDiscountCode,
            textSize: Sizes.dimen_16,
            textColor: kColorTextSecondary,
          ),
          const SizedBox(height: Sizes.dimen_14),
          SizedBox(
            height: Sizes.dimen_46,
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: DottedBorder(
                    dashPattern: const [4, 2],
                    color: kColorYellow,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(Sizes.dimen_4),
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: Sizes.dimen_8,
                          right: Sizes.dimen_8,
                          bottom: Sizes.dimen_12,
                      ),
                      color: kColorYellowLight,
                      child: const InputDiscountCodeWidget(),
                    ),
                  ),
                ),
                const SizedBox(width: Sizes.dimen_22),
                Expanded(
                  flex: 3,
                  child: AppButton(
                    text: Languages.cartApplyButton,
                    paddingTop: Sizes.dimen_12,
                    paddingBottom: Sizes.dimen_12,
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: Sizes.dimen_35),
        ],
      ),
    );
  }
}
