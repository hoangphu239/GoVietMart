import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/screen/home/flash_sale/see_all_widget.dart';
import 'package:hunty/presentation/screen/home/viewed_product/list_viewed_product_widget.dart';
import 'package:hunty/presentation/widgets/app_padding.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ViewedProductWidget extends StatelessWidget {
  final String title;

  const ViewedProductWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppPadding(
        top: Sizes.dimen_10,
        child: Column(
          children: [
            Row(
              children: [
                AppTextBold(
                  text: title,
                  textColor: kColorTextPrimary,
                  textSize: Sizes.dimen_16,
                ),
                const Spacer(),
                SeeAllTitle(
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: Sizes.dimen_14),
            const SizedBox(
              height: Sizes.dimen_260,
              child: ListViewedProductWidget(),
            ),
          ],
        ),
    );
  }
}
