import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/screenutil/screenutil.dart';


class AppPadding extends StatelessWidget {
  final Widget child;
  final double? top, bottom, left, right;

  const AppPadding({
    super.key,
    this.top,
    this.bottom,
    this.left,
    this.right,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: top ?? ScreenUtil.statusBarHeight + Sizes.dimen_10,
        left: left ?? Sizes.dimen_16,
        right: right ?? Sizes.dimen_16,
        bottom: bottom ?? Sizes.dimen_16,
      ),
      child: child,
    );
  }
}
