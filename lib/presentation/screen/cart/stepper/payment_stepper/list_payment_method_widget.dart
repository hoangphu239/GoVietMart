import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/payment_method_model.dart';
import 'package:hunty/presentation/screen/cart/stepper/payment_stepper/item_payment_method_widget.dart';
import 'package:hunty/presentation/widgets/app_divider.dart';
import 'package:hunty/presentation/widgets/app_padding.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ListPaymentMethodWidget extends StatefulWidget {
  const ListPaymentMethodWidget({super.key});

  @override
  State<ListPaymentMethodWidget> createState() =>
      _ListPaymentMethodWidgetState();
}

class _ListPaymentMethodWidgetState extends State<ListPaymentMethodWidget> {
  final List<PaymentMethodModel> paymentMethods = getPaymentMethods();
  late String _selectedMethod;

  @override
  void initState() {
    super.initState();
    _selectedMethod = paymentMethods[0].name;
  }

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      top: Sizes.dimen_20,
      bottom: Sizes.dimen_0,
      child: Column(
        children: [
          const AppTextNormal(
            text: Languages.cartPaymentMethod,
            textColor: kColorTextSecondary,
            textSize: Sizes.dimen_16,
          ),
          const SizedBox(height: Sizes.dimen_12),
          ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: paymentMethods.length,
            itemBuilder: (context, index) {
              return ItemPaymentMethodWidget(
                itemPaymentMethod: paymentMethods[index],
                selectedMethod: _selectedMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedMethod = value;
                  });
                },
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: Sizes.dimen_16,
              child: AppDivider(),
            ),
          ),
        ],
      ),
    );
  }
}
