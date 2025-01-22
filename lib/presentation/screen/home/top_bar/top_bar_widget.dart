import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/screen/home/top_bar/input_search_widget.dart';
import 'package:hunty/presentation/widgets/app_slide_cover.dart';
import 'package:hunty/theme/theme.dart';


class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Sizes.dimen_235,
      decoration: const BoxDecoration(
        color: kColorWhite,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.7,
            child: Container(
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(color: kColorYellow),
              padding: const EdgeInsets.only(
                top: Sizes.dimen_45,
                left: Sizes.dimen_20,
                right: Sizes.dimen_8,
              ),
              child: const InputSearchWidget(),
            ),
          ),
          const FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.3,
            child: SizedBox.shrink(),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: AppSlideCover(children: getSlideCover()),
          ),
        ],
      ),
    );
  }
}
