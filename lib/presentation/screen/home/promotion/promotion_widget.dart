import 'package:flutter/material.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/screen/home/flash_sale/see_all_widget.dart';
import 'package:hunty/presentation/screen/home/promotion/list_promotion_widget.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class PromotionWidget extends StatelessWidget {
  final String titleSection;

  const PromotionWidget({
    super.key,
    required this.titleSection,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.dimen_16,
            vertical: Sizes.dimen_10,
          ),
          child: Row(
            children: [
              AppTextBold(
                text: titleSection,
                textColor: kColorTextPrimary,
                textSize: Sizes.dimen_16,
              ),
              const Spacer(),
              SeeAllTitle(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true)
                      .pushNamed(RouteList.recommendPromotion);
                },
              ),
            ],
          ),
        ),
        Container(
          height: Sizes.dimen_200,
          padding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_16),
          child: ListPromotionWidget(titleSection: titleSection),
        ),
        const Divider(
          color: kColorGrayDivider,
          thickness: Sizes.dimen_5,
        ),
      ],
    );
  }
}
