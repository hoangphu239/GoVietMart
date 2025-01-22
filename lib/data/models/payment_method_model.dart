import 'package:hunty/common/constants/image_constant.dart';

class PaymentMethodModel {
  final String icon;
  final String name;
  final String description;

  PaymentMethodModel({
    required this.name,
    required this.description,
    required this.icon,
  });
}

List<PaymentMethodModel> getPaymentMethods() {
  return [
    PaymentMethodModel(
        icon: ImageConstant.cash,
        name: "Cash on Delivery",
        description: "Discount 3% until 31/03"),
    PaymentMethodModel(
        icon: ImageConstant.visa,
        name: "Credit Card / Master Card",
        description: "Cashback 5% upto 50.000đ"),
    PaymentMethodModel(
        icon: ImageConstant.atm,
        name: "ATM",
        description: "Cashback 5% upto 50.000đ"),
    PaymentMethodModel(
        icon: ImageConstant.momo,
        name: "Momo",
        description: "Cashback 5% upto 50.000đ"),
    PaymentMethodModel(
        icon: ImageConstant.payoo,
        name: "Payoo",
        description: "Cashback 5% upto 50.000đ"),
  ];
}
