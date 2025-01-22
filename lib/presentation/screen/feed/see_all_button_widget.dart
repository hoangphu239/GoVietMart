import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_button.dart';

class SeeAllButtonWidget extends StatelessWidget {
  const SeeAllButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_14),
      child: AppGrayButton(
        text: Languages.feedSeeAll,
        onPressed: () {},
      ),
    );
  }
}
