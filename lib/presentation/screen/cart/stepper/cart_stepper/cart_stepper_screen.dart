import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/data/models/stepper_model.dart';
import 'package:hunty/presentation/screen/cart/stepper/cart_stepper/discount_code_widget.dart';
import 'package:hunty/presentation/screen/cart/stepper/cart_stepper/list_order_product_widget.dart';
import 'package:hunty/presentation/screen/cart/stepper/widget/bottom_total_widget.dart';
import 'package:hunty/presentation/screen/cart/stepper/widget/header_stepper_widget.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';

class CartStepperScreen extends StatelessWidget {
  const CartStepperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<StepperModel> steppers = getSteppers();
    final List<ProductModel> products = getProductsOfShop().sublist(0, 2);
    return AppScaffold(
      resizeToAvoidBottomInset: true,
      titleScreen: Languages.cartTitle,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom, // Đệm khi bàn phím xuất hiện
                ),
                child: Column(
                  children: [
                    HeaderStepperWidget(
                      steppers: steppers,
                      indexPassed: 0,
                    ),
                    ListOrderProductionWidget(
                      products: products,
                    ),
                    const DiscountCodeWidget(),
                  ],
                ),
              ),
            ),
          ),
          BottomTotalWidget(
            onPress: () {
              Navigator.of(context, rootNavigator: true)
                  .pushNamed(RouteList.deliveryStepper);
            },
          ),
        ],
      ),
    );
  }
}
