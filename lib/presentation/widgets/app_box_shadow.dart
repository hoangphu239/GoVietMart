import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/theme/theme.dart';

class AppBoxShadow extends StatelessWidget {
  final double width, height, padding, radius;
  final Widget child;
  final Color colorShadow;

  const AppBoxShadow({
    super.key,
    required this.width,
    required this.height,
    required this.child,
    this.colorShadow = kColorGrayShadow,
    this.radius = Sizes.dimen_10,
    this.padding = Sizes.dimen_0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: kColorWhite,
        border: Border.all(
          color: kColorGrayBorder,
          width: Sizes.dimen_1, // Độ dày viền
        ),
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: colorShadow == kColorGrayShadow
                ? kColorGrayShadow.withOpacity(0.2)
                : colorShadow,
            spreadRadius: Sizes.dimen_3,
            blurRadius: Sizes.dimen_5,
            offset: const Offset(Sizes.dimen_0, Sizes.dimen_3),
          ),
        ],
      ),
      child: child,
    );
  }
}
