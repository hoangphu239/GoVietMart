import 'package:flutter/material.dart';
import 'package:hunty/common/constants/image_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/screen/details_promotion/shop_jnfo_widget.dart';
import 'package:hunty/presentation/screen/details_promotion/title_discount_widget.dart';
import 'package:hunty/presentation/widgets/app_cover_widget.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';
import '../../widgets/production/list_product_widget.dart';


class DetailsPromotionScreen extends StatefulWidget {
  const DetailsPromotionScreen({super.key});

  @override
  State<DetailsPromotionScreen> createState() => _DetailsPromotionScreenState();
}

class _DetailsPromotionScreenState extends State<DetailsPromotionScreen> {
  bool _showViewCart = false;
  final cartHeight = Sizes.dimen_55;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      child: Stack(
        children: [
          Column(
            children: [
              const AppCoverWidget(
                  isShowMenu: true,
                  name: ImageConstant.promotion_large
              ),
              const ShopInfoWidget(),
              const TitleDiscountWidget(),
              Expanded(
                child: ListProductionWidget(
                  isShowRating: true,
                  onAddCart: () {
                    setState(
                      () {
                        _showViewCart = !_showViewCart;
                      },
                    );
                  },
                ),
              ),
              _showViewCart ? const SizedBox(
                height: Sizes.dimen_55,
              ): const SizedBox.shrink() ,
            ],
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            left: 0,
            right: 0,
            bottom: _showViewCart ? 0 : -cartHeight,
            // Vị trí dựa trên trạng thái
            child: InkWell(
              child: Container(
                height: cartHeight,
                padding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_14),
                color: kColorYellow, // Màu nền
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppTextBold(
                      text: Languages.detailsPromotionViewCart,
                      textSize: Sizes.dimen_16,
                    ),
                    AppTextNormal(
                      text: '(1 item)',
                      textSize: Sizes.dimen_16,
                    ),
                    Spacer(),
                    AppTextBold(
                      text: '575.000 VND',
                      textSize: Sizes.dimen_16,
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.of(context, rootNavigator: true)
                    .pushNamed(RouteList.cartStepper);
              },
            ),
          )
        ],
      ),
    );
  }
}
