import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/widgets/app_divider.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class OrderIdWidget extends StatelessWidget {
  const OrderIdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: Sizes.dimen_20,
        ),
        const AppTextNormal(
          text: Languages.cartYourOrderId,
          textColor: kColorTextSecondary,
          textSize: Sizes.dimen_16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AppTextBold(
              text: '234567',
              textColor: kColorTextPrimary,
              textSize: Sizes.dimen_24,
            ),
            const SizedBox(
              width: Sizes.dimen_16,
            ),
            SvgPicture.asset(
              IconsConstant.copy,
              width: Sizes.dimen_18,
              height: Sizes.dimen_20,
            ),
            const SizedBox(
              width: Sizes.dimen_4,
            ),
            InkWell(
              child: const AppTextNormal(
                text: Languages.cartCopy,
                textColor: kColorYellow,
                textSize: Sizes.dimen_16,
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(Languages.cartCopySuccess.translator(context)),
                  ),
                );
              },
            ),
          ],
        ),
        const SizedBox(height: Sizes.dimen_12),
        const AppDivider(),
        const SizedBox(height: Sizes.dimen_12),
      ],
    );
  }
}
