import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/theme/theme.dart';

class AppThumbnail extends StatelessWidget {
  final double width, height;
  final String imageName;
  final BoxFit fit;
  final bool isSelected;
  final int index;
  final Function(int index) onPress;

  const AppThumbnail({
    super.key,
    required this.width,
    required this.height,
    required this.imageName,
    this.fit = BoxFit.cover,
    this.isSelected = false,
    this.index = 0,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? kColorYellow : kColorTransparent,
            width: Sizes.dimen_2,
          ),
          borderRadius: BorderRadius.circular(Sizes.dimen_6), // Bo góc cho viền
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(Sizes.dimen_6),
          child: Image.asset(
            imageName,
            width: width,
            height: height,
            fit: fit,
          ),
        ),
      ),
      onTap: () {
        onPress(index);
      },
    );
  }
}
