import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/category_model.dart';
import 'package:hunty/presentation/widgets/app_box_shadow.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';


class ItemCategoryWidget extends StatelessWidget {
  final CategoryModel itemCategory;

  const ItemCategoryWidget({super.key, required this.itemCategory});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBoxShadow(
          width: Sizes.dimen_45,
          height: Sizes.dimen_45,
          colorShadow: kColorGrayBorder,
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              itemCategory.icon,
              width: Sizes.dimen_28,
              height: Sizes.dimen_28,
            ),
          ),
        ),
        const SizedBox(height: Sizes.dimen_2),
        AppTextNormal(
          text: itemCategory.name,
          textSize: Sizes.dimen_11,
          alignment: Alignment.center,
        ),
      ],
    );
  }
}
