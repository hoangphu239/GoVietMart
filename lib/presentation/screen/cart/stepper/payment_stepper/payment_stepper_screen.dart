import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/data/models/stepper_model.dart';
import 'package:hunty/presentation/screen/cart/stepper/payment_stepper/fee_info_widget.dart';
import 'package:hunty/presentation/screen/cart/stepper/payment_stepper/list_payment_method_widget.dart';
import 'package:hunty/presentation/screen/cart/stepper/widget/bottom_total_widget.dart';
import 'package:hunty/presentation/screen/cart/stepper/widget/header_stepper_widget.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';


class PaymentStepperScreen extends StatelessWidget {
  const PaymentStepperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<StepperModel> steppers = getSteppers();
    return AppScaffold(
        titleScreen: Languages.cartPayment,
        child: Column(
          children: [
            HeaderStepperWidget(
              steppers: steppers,
              indexPassed: 2,
            ),
            const ListPaymentMethodWidget(),
            const Expanded(child: FeeInfoWidget()),
            BottomTotalWidget(
              onPress: () {
                Navigator.of(context, rootNavigator: true).pushNamed(RouteList.completeStepper);
              },
            ),
          ],
        ),
    );
  }
}
