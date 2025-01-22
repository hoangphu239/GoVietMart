import 'package:flutter/material.dart';
import 'package:flutter_custom_tab_bar/custom_tab_bar.dart';
import 'package:flutter_custom_tab_bar/indicator/custom_indicator.dart';
import 'package:flutter_custom_tab_bar/indicator/standard_indicator.dart';
import 'package:flutter_custom_tab_bar/transform/color_transform.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/screen/search/tabview/map/tab_map_widget.dart';
import 'package:hunty/presentation/screen/search/tabview/promotion/tab_promotion_widget.dart';
import 'package:hunty/theme/theme.dart';

class TabViewWidget extends StatelessWidget {
  const TabViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const int pageCount = 2;
    final PageController controller = PageController();
    final CustomTabBarController tabBarController = CustomTabBarController();

    Widget getTabChild(BuildContext context, int index) {
      return TabBarItem(
        index: index,
        transform: ColorsTransform(
          normalColor: kColorTextSecondary,
          highlightColor: kColorTextPrimary,
          builder: (context, color) {
            return Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(minWidth: Sizes.dimen_200),
              child: Text(
                index == 0 ? 'Promotion' : 'Map',
                style: index == tabBarController.currentIndex
                    ? PrimaryFont.bold(Sizes.dimen_16).copyWith(color: color)
                    : PrimaryFont.regular(Sizes.dimen_16)
                        .copyWith(color: color),
              ),
            );
          },
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.dimen_10,
        vertical: Sizes.dimen_16,
      ),
      child: Column(
        children: [
          CustomTabBar(
            tabBarController: tabBarController,
            height: Sizes.dimen_36,
            itemCount: pageCount,
            builder: getTabChild,
            indicator: StandardIndicator(
              width: Sizes.dimen_150,
              height: Sizes.dimen_3,
              color: kColorYellow,
            ),
            pageController: controller,
          ),
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: pageCount,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return const TabPromotionWidget();
                  case 1:
                    return const TabMapWidget();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
