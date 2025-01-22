import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/stepper_model.dart';
import 'package:hunty/presentation/screen/cart/stepper/complete_stepper/delivery_address_widget.dart';
import 'package:hunty/presentation/screen/cart/stepper/complete_stepper/order_details_widget.dart';
import 'package:hunty/presentation/screen/cart/stepper/complete_stepper/order_id_widget.dart';
import 'package:hunty/presentation/screen/cart/stepper/complete_stepper/payment_fee_widget.dart';
import 'package:hunty/presentation/screen/cart/stepper/widget/header_stepper_widget.dart';
import 'package:hunty/presentation/widgets/app_divider.dart';
import 'package:hunty/presentation/widgets/app_padding.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';


class CompleteStepperScreen extends StatelessWidget {
  const CompleteStepperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<StepperModel> steppers = getSteppers();
    return AppScaffold(
      titleScreen: Languages.cartOrderCompleted,
      child: SingleChildScrollView(
        child: AppPadding(
          top: Sizes.dimen_0,
          bottom: Sizes.dimen_24,
          child: Column(
            children: [
              HeaderStepperWidget(
                steppers: steppers,
                indexPassed: 3,
              ),
              const OrderIdWidget(),
              const OrderDetailsWidget(),
              const DeliveryAddressWidget(),
              const SizedBox(height: Sizes.dimen_12),
              const AppDivider(),
              const SizedBox(height: Sizes.dimen_12),
              const PaymentFeeWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
