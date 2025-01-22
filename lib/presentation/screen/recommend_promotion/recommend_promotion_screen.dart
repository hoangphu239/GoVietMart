import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/screen/recommend_promotion/list_recommend_promotion_widget.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';
import 'package:hunty/presentation/widgets/app_top_bar.dart';
import 'package:hunty/theme/theme.dart';

class RecommendPromotionScreen extends StatelessWidget {
  const RecommendPromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      titleScreen: Languages.recommendedPromotionTitle.translator(context),
      child: const ListRecommendPromotionWidget(),
    );
  }
}
