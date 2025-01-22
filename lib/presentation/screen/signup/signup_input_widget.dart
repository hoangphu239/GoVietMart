import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/di/get_it.dart';
import 'package:hunty/presentation/bloc/signup/signup_cubit.dart';
import 'package:hunty/presentation/screen/signup/birthday_picker_widget.dart';
import 'package:hunty/presentation/screen/signup/gender_widget.dart';
import 'package:hunty/presentation/widgets/app_button.dart';
import 'package:hunty/presentation/widgets/app_text_field.dart';

class SignUpInputWidget extends StatefulWidget {
  final Function(
    String firstName,
    String lastName,
    String email,
    String password,
    String confirmPassword,
  ) onPressed;

  const SignUpInputWidget({
    super.key,
    required this.onPressed,
  });

  @override
  State<SignUpInputWidget> createState() => _SignUpInputWidgetState();
}

class _SignUpInputWidgetState extends State<SignUpInputWidget> {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController phoneController;
  late TextEditingController birthdayController;
  late SignupCubit _signupCubit;

  @override
  void initState() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    phoneController = TextEditingController();
    birthdayController = TextEditingController();
    _signupCubit = getItInstance<SignupCubit>();
    super.initState();
  }

  @override
  void dispose() {
    _signupCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          controller: firstNameController,
          hintText: Languages.signUpFirstName.translator(context),
          action: TextInputAction.next,
        ),
        const SizedBox(height: Sizes.dimen_8),
        AppTextField(
          controller: lastNameController,
          hintText: Languages.signUpLastName.translator(context),
          action: TextInputAction.next,
        ),
        const SizedBox(height: Sizes.dimen_8),
        AppTextField(
          controller: emailController,
          hintText: Languages.signUpEmail.translator(context),
          action: TextInputAction.next,
          inputType: TextInputType.emailAddress,
        ),
        const SizedBox(height: Sizes.dimen_8),
        AppPasswordTextField(
          controller: passwordController,
          hintText: Languages.signUpPassword.translator(context),
          action: TextInputAction.next,
        ),
        const SizedBox(height: Sizes.dimen_8),
        AppPasswordTextField(
          controller: confirmPasswordController,
          hintText: Languages.signUpRetypePassword.translator(context),
          action: TextInputAction.next,
        ),
        const SizedBox(height: Sizes.dimen_8),
        AppTextField(
          controller: phoneController,
          hintText: Languages.signUpTelephone.translator(context),
          action: TextInputAction.next,
          inputType: TextInputType.phone,
        ),
        const SizedBox(height: Sizes.dimen_20),
        const GenderWidget(),
        const SizedBox(height: Sizes.dimen_14),
        const BirthdayWidget(),
        const SizedBox(height: Sizes.dimen_28),
        SizedBox(
          width: double.infinity,
          child: AppButton(
            text: Languages.signUpSubmitButton,
            onPressed: () {
              widget.onPressed(
                  firstNameController.text,
                  lastNameController.text,
                  emailController.text,
                  passwordController.text,
                  confirmPasswordController.text);
            },
          ),
        ),
      ],
    );
  }
}
