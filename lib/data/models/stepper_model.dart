import 'package:hunty/common/constants/icons_constant.dart';

class StepperModel {
  final String icon;
  StepperModel({required this.icon});
}

List<StepperModel> getSteppers() {
  return [
    StepperModel(icon: IconsConstant.stepperCart_1),
    StepperModel(icon: IconsConstant.stepperCart_2),
    StepperModel(icon: IconsConstant.stepperCart_3),
    StepperModel(icon: IconsConstant.stepperCart_4),
  ];
}