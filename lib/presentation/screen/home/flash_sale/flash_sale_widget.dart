import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/screen/home/flash_sale/count_down_widget.dart';
import 'package:hunty/presentation/screen/home/flash_sale/items/list_flash_sale_widget.dart';
import 'package:hunty/presentation/screen/home/flash_sale/title_widget.dart';
import 'package:hunty/presentation/screen/home/flash_sale/see_all_widget.dart';
import 'package:hunty/presentation/widgets/app_padding.dart';
import 'package:hunty/theme/theme.dart';

class FlashSaleWidget extends StatefulWidget {
  const FlashSaleWidget({super.key});

  @override
  State<FlashSaleWidget> createState() => _FlashSaleWidgetState();
}

class _FlashSaleWidgetState extends State<FlashSaleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppPadding(
          top: Sizes.dimen_20,
          child: Row(
            children: [
              const TitleWidget(),
              const SizedBox(width: Sizes.dimen_12),
              const CountDownWidget(),
              const Spacer(),
              SeeAllTitle(
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          color: kColorGrayBorder,
          height: Sizes.dimen_210,
          padding: const EdgeInsets.only(
            left: Sizes.dimen_16,
            right: Sizes.dimen_16,
            top: Sizes.dimen_16,
            bottom: Sizes.dimen_8,
          ),
          child: const ListFlashSaleWidget(),
        ),
      ],
    );
  }
}
