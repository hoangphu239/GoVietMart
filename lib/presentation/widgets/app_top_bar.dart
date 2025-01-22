import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class AppTopBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double paddingRight;
  final bool isShowBackIcon;
  final Color backgroundColor;
  final Function() backPressed;

  const AppTopBar({
    super.key,
    required this.title,
    required this.backPressed,
    this.isShowBackIcon = true,
    this.backgroundColor = kColorWhite,
    this.paddingRight = Sizes.dimen_50,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: isShowBackIcon
          ? IconButton(
              icon: SvgPicture.asset(IconsConstant.back),
              onPressed: () {
                backPressed();
              },
            )
          : const SizedBox.shrink(),
      title: Padding(
        padding: EdgeInsets.only(right: paddingRight),
        child: AppTextBold(
          text: title,
          alignment: Alignment.center,
          textSize: Sizes.dimen_18,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
