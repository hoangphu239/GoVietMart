import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_text.dart';

class AppHeader extends StatelessWidget {
  final String title;
  final String text;
  final bool? isBack;
  final Function()? onPressed;

  const AppHeader({
    super.key,
      this.isBack = true,
      required this.title,
      required this.text,
      this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(-15, 0),
          child: isBack == true ? IconButton(
            padding: EdgeInsets.zero,
            onPressed: onPressed,
            icon: SvgPicture.asset(IconsConstant.back),
          ): SizedBox(height: screenHeight * 0.08, width: double.infinity),
        ),
        SizedBox(height: screenHeight * 0.04),
        AppTextTitle(title: title),
        const SizedBox(height: Sizes.dimen_10),
        AppTextNormal(text: text),
        SizedBox(height: screenHeight * 0.06),
      ],
    );
  }
}
