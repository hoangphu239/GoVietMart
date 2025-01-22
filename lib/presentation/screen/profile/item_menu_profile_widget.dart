import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/menu_model.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ItemMenuProfileWidget extends StatefulWidget {
  final MenuModel itemMenu;
  final Function(int id) onPress;

  const ItemMenuProfileWidget({
    super.key,
    required this.itemMenu,
    required this.onPress,
  });

  @override
  State<ItemMenuProfileWidget> createState() => _ItemMenuProfileWidgetState();
}

class _ItemMenuProfileWidgetState extends State<ItemMenuProfileWidget> {
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTextNormal(text: widget.itemMenu.name, textSize: Sizes.dimen_16),
            widget.itemMenu.isShowToggle
                ? Transform.scale(
                    scale: 0.9,
                    child: Switch(
                      value: isEnabled,
                      activeColor: kColorWhite,
                      activeTrackColor: kColorYellow,
                      inactiveThumbColor: kColorGrayDivider,
                      inactiveTrackColor: kColorGrayPrimary,
                      onChanged: (bool value) {
                        setState(() {
                          isEnabled = value;
                        });
                      },
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
      onTap: () {
        widget.onPress(widget.itemMenu.id);
      },
    );
  }
}
