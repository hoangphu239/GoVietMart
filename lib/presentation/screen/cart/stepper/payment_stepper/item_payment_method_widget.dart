import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/payment_method_model.dart';
import 'package:hunty/presentation/widgets/app_radio.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class ItemPaymentMethodWidget extends StatefulWidget {
  final PaymentMethodModel itemPaymentMethod;
  final String selectedMethod;
  final Function(String method) onChanged;

  const ItemPaymentMethodWidget({
    super.key,
    required this.itemPaymentMethod,
    required this.selectedMethod,
    required this.onChanged,
  });

  @override
  State<ItemPaymentMethodWidget> createState() =>
      _ItemPaymentMethodWidgetState();
}

class _ItemPaymentMethodWidgetState extends State<ItemPaymentMethodWidget> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppRadio(
          value: widget.itemPaymentMethod.name,
          groupValue: widget.selectedMethod,
          onChanged: (value) {
            setState(() {
              widget.onChanged(value);
            });
          },
          activeColor: kColorYellow,
          borderWidth: Sizes.dimen_1,
          outerSize: Sizes.dimen_24,
          innerSize: Sizes.dimen_14,
        ),
        const SizedBox(width: Sizes.dimen_8),
        Image.asset(
          widget.itemPaymentMethod.icon,
          width: Sizes.dimen_65,
          height: Sizes.dimen_55,
        ),
        const SizedBox(width: Sizes.dimen_8),
        InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextNormal(
                text: widget.itemPaymentMethod.name,
                textSize: Sizes.dimen_16,
                textColor: kColorTextPrimary,
              ),
              AppTextNormal(
                text: widget.itemPaymentMethod.description,
                textSize: Sizes.dimen_14,
                textColor: kColorTextSecondary,
              ),
            ],
          ),
          onTap: () {
            setState(
              () {
                widget.onChanged(widget.itemPaymentMethod.name);
              },
            );
          },
        )
      ],
    );
  }
}
