import 'package:flutter/material.dart';
import 'package:hunty/common/constants/image_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/theme/theme.dart';

class LoginSocialButton extends StatelessWidget {
  final Function() onGooglePressed;
  final Function() onFacebookPressed;

  const LoginSocialButton(
      {super.key,
      required this.onGooglePressed,
      required this.onFacebookPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ItemSocialButton(
            text: Languages.loginGoogleButton.translator(context),
            icon: ImageConstant.google,
            onPressed: () { onGooglePressed(); },
          ),
        ),
        const SizedBox(width: Sizes.dimen_32),
        Expanded(
          child: ItemSocialButton(
            text: Languages.loginFacebookButton.translator(context),
            icon: ImageConstant.facebook,
            onPressed: () { onFacebookPressed(); },
          ),
        ),
      ],
    );
  }
}

class ItemSocialButton extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onPressed;

  const ItemSocialButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: Sizes.dimen_5,
      shadowColor: kColorGrayShadow,
      borderRadius: BorderRadius.circular(Sizes.dimen_5),
      child: OutlinedButton.icon(
          onPressed: onPressed,
          icon: Image.asset(icon, width: Sizes.dimen_26, height: Sizes.dimen_26),
          label: Text(
            text,
            style: PrimaryFont.regular(Sizes.dimen_16)
                .copyWith(color: kColorTextButton),
          ),
          style: OutlinedButton.styleFrom(
            backgroundColor: kColorWhite,
            side: const BorderSide(color: kColorGrayShadow, width: Sizes.dimen_0_2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.dimen_5),
            ),
            padding: const EdgeInsets.symmetric(vertical: Sizes.dimen_12),
          )),
    );
  }
}
