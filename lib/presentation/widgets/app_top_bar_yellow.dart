import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_top_bar.dart';
import 'package:hunty/theme/theme.dart';

class TopBarYellowWidget extends StatelessWidget {
  final String title;
  const TopBarYellowWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Sizes.dimen_90,
      child: AppTopBar(
        title: title,
        isShowBackIcon: false,
        backgroundColor: kColorYellow,
        backPressed: () {},
      ),
    );
  }
}
