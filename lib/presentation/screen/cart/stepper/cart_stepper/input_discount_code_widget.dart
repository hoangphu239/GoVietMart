import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/theme/theme.dart';

class InputDiscountCodeWidget extends StatefulWidget {
  const InputDiscountCodeWidget({super.key});

  @override
  State<InputDiscountCodeWidget> createState() => _InputDiscountCodeWidgetState();
}

class _InputDiscountCodeWidgetState extends State<InputDiscountCodeWidget> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textCapitalization: TextCapitalization.characters,
      style: PrimaryFont.regular(Sizes.dimen_16).copyWith(color: kColorTextPrimary),
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.text,
      maxLines: 1,
      decoration: const InputDecoration(
          border: InputBorder.none
      ),
    );
  }
}
