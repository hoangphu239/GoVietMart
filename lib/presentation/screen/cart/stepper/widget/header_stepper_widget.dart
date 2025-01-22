import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/stepper_model.dart';
import 'package:hunty/presentation/screen/cart/stepper/widget/item_stepper_widget.dart';
import 'package:hunty/theme/theme.dart';

class HeaderStepperWidget extends StatelessWidget {
  final List<StepperModel> steppers;
  final int indexPassed;
  const HeaderStepperWidget({super.key, required this.steppers, required this.indexPassed});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Sizes.dimen_55,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: steppers.length,
        itemBuilder: (context, index) {
          return ItemStepperWidget(
            itemStepper: steppers[index],
            indexCurrent: index,
            indexPassed: indexPassed,
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: Sizes.dimen_50,
          height: Sizes.dimen_5,
          child: Divider(
            thickness: Sizes.dimen_5,
            color: index < indexPassed ? kColorYellow : kColorGrayBorder,
          ),
        ),
      ),
    );
  }
}
