import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/stepper_model.dart';
import 'package:hunty/presentation/screen/cart/stepper/complete_stepper/delivery_address_widget.dart';
import 'package:hunty/presentation/screen/cart/stepper/widget/bottom_total_widget.dart';
import 'package:hunty/presentation/screen/cart/stepper/widget/header_stepper_widget.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';

class DeliveryStepperScreen extends StatelessWidget {
  const DeliveryStepperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<StepperModel> steppers = getSteppers();
    return AppScaffold(
      titleScreen: Languages.cartDeliveryMethod,
      child: Column(
        children: [
          HeaderStepperWidget(
            steppers: steppers,
            indexPassed: 1,
          ),
          const Expanded(
            child: DeliveryAddressWidget(),
          ),
          BottomTotalWidget(
            onPress: () {
              Navigator.of(context, rootNavigator: true).pushNamed(RouteList.paymentStepper);
            },
          ),
        ],
      ),
    );
  }
}
