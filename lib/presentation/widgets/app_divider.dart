import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/theme/theme.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: kColorGrayDivider,
      thickness: Sizes.dimen_1,
    );
  }
}
