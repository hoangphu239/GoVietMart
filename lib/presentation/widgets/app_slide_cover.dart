import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:hunty/common/constants/image_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_box_shadow.dart';
import 'package:hunty/theme/theme.dart';

class AppSlideCover extends StatefulWidget {
  final double paddingVertical;
  final List<Widget> children;

  const AppSlideCover({
    super.key,
    this.paddingVertical = 0,
    required this.children,
  });

  @override
  State<AppSlideCover> createState() => _AppSlideCoverState();
}

class _AppSlideCoverState extends State<AppSlideCover> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.dimen_20,
        vertical: widget.paddingVertical,
      ),
      child: AppBoxShadow(
        width: double.infinity,
        height: Sizes.dimen_130,
        radius: Sizes.dimen_5,
        colorShadow: kColorTextBottomBar.withOpacity(0.3),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(Sizes.dimen_5), // Bo góc
          child: ImageSlideshow(
            width: double.infinity,
            height: double.infinity,
            initialPage: 0,
            indicatorColor: kColorYellow,
            indicatorBackgroundColor: kColorGraySecondary,
            onPageChanged: (value) {},
            autoPlayInterval: 3000,
            isLoop: true,
            children: widget.children,
          ),
        ),
      ),
    );
  }
}

List<Widget> getSlideCover() {
  return [
    Image.asset(
      ImageConstant.coverFirst,
      fit: BoxFit.fill,
    ),
    Image.asset(
      ImageConstant.coverSecond,
      fit: BoxFit.fill,
    ),
  ];
}
