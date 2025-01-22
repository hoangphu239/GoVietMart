import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/widgets/app_button.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextNormal(
          text: Languages.loginNotHaveAccountYet.translator(context),
          alignment: Alignment.center,
          textSize: Sizes.dimen_14,
          textColor: kColorTextSecondary,
        ),
        const SizedBox(height: Sizes.dimen_20),
        SizedBox(
          width: double.infinity,
          child: AppOutlineButton(
            text: Languages.loginSignupButton.translator(context),
            paddingTop: Sizes.dimen_12,
            paddingBottom: Sizes.dimen_12,
            onPressed: () {
              Navigator.of(context).pushNamed(RouteList.signup);
            },
          ),
        ),
        const SizedBox(height: Sizes.dimen_20),
        AppTextNormal(
          text: Languages.loginLanguageButton.translator(context),
          alignment: Alignment.center,
          textSize: Sizes.dimen_14,
        )
      ],
    );
  }
}
