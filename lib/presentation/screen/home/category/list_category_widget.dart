import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/category_model.dart';
import 'package:hunty/presentation/screen/home/category/item_category_widget.dart';

class ListCategoryWidget extends StatelessWidget {
  const ListCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = getCategories();

    return Container(
      height: Sizes.dimen_160,
      padding: const EdgeInsets.only(
        left: Sizes.dimen_16,
        right: Sizes.dimen_16,
        top: Sizes.dimen_20,
      ),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: Sizes.dimen_8,
          mainAxisSpacing: Sizes.dimen_8,
        ),
        itemBuilder: (BuildContext context, int index) {
          return ItemCategoryWidget(itemCategory: categories[index]);
        },
      ),
    );
  }
}
