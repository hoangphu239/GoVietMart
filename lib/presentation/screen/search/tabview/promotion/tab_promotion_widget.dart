import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/screen/search/tabview/promotion/section_promotion_widget.dart';

class TabPromotionWidget extends StatelessWidget {
  const TabPromotionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SectionPromotionWidget(titleSection: Languages.searchLatestSearch),
        SectionPromotionWidget(titleSection: Languages.searchHotTrend),
      ],
    );
  }
}
