import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/presentation/screen/feed/list_category_widget.dart';
import 'package:hunty/presentation/screen/feed/see_all_button_widget.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';
import 'package:hunty/presentation/widgets/app_top_bar_yellow.dart';
import 'package:hunty/theme/theme.dart';

import '../../widgets/production/list_product_widget.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      statusBarColor: kColorYellow,
      statusBarIconBrightness: Brightness.light,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const TopBarYellowWidget(title: Languages.feed),
            ListProductionWidget(
              shrinkWrap: true,
              isShowSale: true,
              onAddCart: () {},
            ),
            const SeeAllButtonWidget(),
            const ListCategoryWidget(),
          ],
        ),
      ),
    );
  }
}
