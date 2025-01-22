import 'package:flutter/material.dart';
import 'package:hunty/common/constants/image_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/details_product_model.dart';
import 'package:hunty/presentation/screen/details_product/bottom_button_widget.dart';
import 'package:hunty/presentation/screen/details_product/choice_color_widget.dart';
import 'package:hunty/presentation/screen/details_product/description_details_product_widget.dart';
import 'package:hunty/presentation/screen/details_product/list_product/list_product_widget.dart';
import 'package:hunty/presentation/screen/details_product/list_thumbnail_widget.dart';
import 'package:hunty/presentation/screen/details_product/name_details_product_widget.dart';
import 'package:hunty/presentation/screen/details_product/product_info_widget.dart';
import 'package:hunty/presentation/widgets/app_cover_widget.dart';
import 'package:hunty/presentation/widgets/app_discount_price.dart';
import 'package:hunty/presentation/widgets/app_divider.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';
import 'package:hunty/presentation/widgets/app_view_rating.dart';
import 'package:hunty/theme/theme.dart';

class DetailsProductScreen extends StatelessWidget {
  const DetailsProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final detailsProduct = getDetailsProduct();
    return AppScaffold(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppCoverWidget(name: ImageConstant.bgCoverDetailsProduct),
                ListThumbnailWidget(thumbnails: detailsProduct.thumbnails),
                NameDetailsProductWidget(name: detailsProduct.name),
                Container(
                  padding: const EdgeInsets.only(
                      left: Sizes.dimen_16, top: Sizes.dimen_10),
                  child: AppViewRating(
                      rating: detailsProduct.rating, showViewRating: true),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: Sizes.dimen_16, top: Sizes.dimen_10),
                  child: AppDiscountPrice(
                    price: detailsProduct.price,
                    discountPrice: detailsProduct.discountPrice,
                    textSizeDiscountPrice: Sizes.dimen_18,
                  ),
                ),
                ChoiceColorWidget(colors: detailsProduct.colors),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: Sizes.dimen_16, vertical: Sizes.dimen_10),
                  child: AppDivider(),
                ),
                ProductInfoWidget(
                  category: detailsProduct.category,
                  brand: detailsProduct.brand,
                  providedBy: detailsProduct.providedBy,
                  manufactured: detailsProduct.manufactured,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: Sizes.dimen_16, vertical: Sizes.dimen_10),
                  child: AppDivider(),
                ),
                DescriptionDetailsProductWidget(html: detailsProduct.description),
                const Divider(color: kColorGrayDivider, thickness: Sizes.dimen_5),
                const ListProductWidget(title: Languages.relatedProduct),
                const ListProductWidget(title: Languages.similarProduct),
                const SizedBox(height: Sizes.dimen_60),
              ],
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BottomButtonWidget(),
          ),
        ],
      ),
    );
  }
}
