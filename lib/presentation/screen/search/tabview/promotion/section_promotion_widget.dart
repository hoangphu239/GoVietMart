import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/screen/search/tabview/promotion/list_search_promotion_widget.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class SectionPromotionWidget extends StatelessWidget {
  final String titleSection;

  const SectionPromotionWidget({
    super.key,
    required this.titleSection,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Sizes.dimen_20),
      child: Column(
        children: [
          AppTextBold(
            text: titleSection,
            textSize: Sizes.dimen_16,
            textColor: kColorTextPrimary,
          ),
          const ListPromotionWidget(),
        ],
      ),
    );
  }
}
