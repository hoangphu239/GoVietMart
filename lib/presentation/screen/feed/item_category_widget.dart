import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/category_model.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/presentation/widgets/app_thumbnail.dart';
import 'package:hunty/theme/theme.dart';

class ItemCategoryWidget extends StatelessWidget {
  final CategoryModel itemCategory;
  final Function() onPress;

  const ItemCategoryWidget({
    super.key,
    required this.itemCategory,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppThumbnail(
          width: double.infinity,
          height: Sizes.dimen_130,
          imageName: itemCategory.image,
          onPress: (index) {
            onPress();
          },
        ),
        AppTextNormal(
          text: itemCategory.name,
          textSize: Sizes.dimen_14,
        ),
      ],
    );
  }
}
