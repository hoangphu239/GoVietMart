import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/stepper_model.dart';
import 'package:hunty/theme/theme.dart';

class ItemStepperWidget extends StatelessWidget {
  final StepperModel itemStepper;
  final int indexCurrent, indexPassed;

  const ItemStepperWidget({
    super.key,
    required this.itemStepper,
    required this.indexPassed,
    required this.indexCurrent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Sizes.dimen_55,
      height: Sizes.dimen_55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: indexCurrent <= indexPassed ? kColorYellow :kColorGrayBorder,
          width: Sizes.dimen_1_3,
        ),
      ),
      child: SvgPicture.asset(
        itemStepper.icon,
        width: Sizes.dimen_20,
        height: Sizes.dimen_20,
        color: indexCurrent <= indexPassed ? kColorYellow : kColorGrayPrimary,
      ),
    );
  }
}
