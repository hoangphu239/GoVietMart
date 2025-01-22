import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/screen/home/category/list_category_widget.dart';
import 'package:hunty/presentation/screen/home/flash_sale/flash_sale_widget.dart';
import 'package:hunty/presentation/screen/home/promotion/promotion_widget.dart';
import 'package:hunty/presentation/screen/home/top_bar/top_bar_widget.dart';
import 'package:hunty/presentation/screen/home/viewed_product/viewed_product_widget.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';
import 'package:hunty/presentation/widgets/app_slide_cover.dart';
import 'package:hunty/theme/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      statusBarColor: kColorYellow,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const TopBarWidget(),
            const ListCategoryWidget(),
            const FlashSaleWidget(),
            AppSlideCover(
              paddingVertical: Sizes.dimen_16,
              children: getSlideCover()
            ),
            const PromotionWidget(
              titleSection:
              Languages.homeRecommendedPromotion,
            ),
            const PromotionWidget(
              titleSection:
              Languages.homePromotionNearYou,
            ),
            const ViewedProductWidget(title: Languages.homeViewedProduct),
          ],
        ),
      ),
    );
  }
}
