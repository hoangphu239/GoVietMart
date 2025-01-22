import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_box_shadow.dart';


class AppImageProduct extends StatelessWidget {
  final double width, height, padding;
  final String imageName;
  final BoxFit fit;

  const AppImageProduct({
    super.key,
    required this.width,
    required this.height,
    required this.imageName,
    this.fit = BoxFit.fill,
    this.padding = Sizes.dimen_0,
  });

  @override
  Widget build(BuildContext context) {
    return AppBoxShadow(
        width: width,
        height: height,
        padding: padding,
        radius: Sizes.dimen_6,
        child: Image.asset(imageName, fit: fit),
    );
  }
}
