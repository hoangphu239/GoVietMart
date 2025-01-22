import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/category_model.dart';
import 'package:hunty/presentation/screen/feed/item_category_widget.dart';
import 'package:hunty/presentation/widgets/app_text.dart';

class ListCategoryWidget extends StatelessWidget {
  const ListCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = getCategories().sublist(0, 4);
    return Container(
      padding: const EdgeInsets.all(Sizes.dimen_14),
      child: Column(
        children: [
          const AppTextBold(text: Languages.categories),
          const SizedBox(height: Sizes.dimen_10),
          GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.1,
              crossAxisSpacing: Sizes.dimen_10
            ),
            itemBuilder: (BuildContext context, int index) {
              return ItemCategoryWidget(
                itemCategory: categories[index],
                onPress: () {},
              );
            },
          ),
        ],
      ),
    );
  }
}
