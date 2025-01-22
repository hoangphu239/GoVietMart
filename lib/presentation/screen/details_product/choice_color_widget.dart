import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/color_model.dart';
import 'package:hunty/presentation/screen/details_product/item_choice_color_widget.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ChoiceColorWidget extends StatefulWidget {
  final List<ColorModel> colors;

  const ChoiceColorWidget({
    super.key,
    required this.colors,
  });

  @override
  State<ChoiceColorWidget> createState() => _ChoiceColorWidgetState();
}

class _ChoiceColorWidgetState extends State<ChoiceColorWidget> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: Sizes.dimen_16, top: Sizes.dimen_10),
      height: Sizes.dimen_50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppTextNormal(
            text: Languages.color,
            textColor: kColorTextSecondary,
            textSize: Sizes.dimen_16,
          ),
          const SizedBox(width: Sizes.dimen_10),
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: widget.colors.length,
            itemBuilder: (context, index) {
              return ItemChoiceColorWidget(
                itemColor: widget.colors[index],
                index: index,
                updateColor: (index) {
                  setState(() {
                    if(selectedIndex >= 0) {
                      widget.colors[selectedIndex].isSelected = false;
                    }
                    widget.colors[index].isSelected = true;
                    selectedIndex = index;
                  });
                },
              );
            },
            separatorBuilder: (context, index) =>
                const SizedBox(width: Sizes.dimen_12),
          )
        ],
      ),
    );
  }
}
