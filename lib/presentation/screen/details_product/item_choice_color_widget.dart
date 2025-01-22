import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/color_model.dart';
import 'package:hunty/theme/theme.dart';

class ItemChoiceColorWidget extends StatelessWidget {
  final ColorModel itemColor;
  final int index;
  final Function(int index) updateColor;

  const ItemChoiceColorWidget({
    super.key,
    required this.itemColor,
    required this.index,
    required this.updateColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: itemColor.isSelected? Sizes.dimen_30: Sizes.dimen_24,
        height: itemColor.isSelected? Sizes.dimen_30: Sizes.dimen_24,
        decoration: BoxDecoration(
          color: itemColor.color,
          shape: BoxShape.circle,
          border: Border.all(
            color: itemColor.isSelected? kColorGrayPrimary : itemColor.color,
            width: Sizes.dimen_1,
          ),
        ),
      ),
      onTap: () {
        updateColor(index);
      },
    );
  }
}