import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/widgets/app_button.dart';
import 'package:hunty/presentation/widgets/app_text_field.dart';


class PhoneOrEmailInputWidget extends StatefulWidget {
  final Function(String email) onPressed;

  const PhoneOrEmailInputWidget({super.key, required this.onPressed});

  @override
  State<PhoneOrEmailInputWidget> createState() =>
      _PhoneOrEmailInputWidgetState();
}

class _PhoneOrEmailInputWidgetState extends State<PhoneOrEmailInputWidget> {
  late TextEditingController phoneOrEmailController;

  @override
  void initState() {
    phoneOrEmailController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          controller: phoneOrEmailController,
          inputType: TextInputType.emailAddress,
          hintText: Languages.recoveryPasswordPhoneOrEmail.translator(context),
          action: TextInputAction.done,
        ),
        const SizedBox(height: Sizes.dimen_24),
        SizedBox(
          width: double.infinity,
          child: AppButton(
            text: Languages.recoveryPasswordSubmitButton,
            onPressed: () => widget.onPressed(phoneOrEmailController.text),
          ),
        ),
      ],
    );
  }
}
