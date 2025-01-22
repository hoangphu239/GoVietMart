import 'package:flutter/material.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/widgets/app_button.dart';
import 'package:hunty/presentation/widgets/app_header.dart';
import 'package:hunty/presentation/widgets/app_padding.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';
import 'package:pinput/pinput.dart';

class VerifyOTPScreen extends StatelessWidget {
  const VerifyOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final defaultPinTheme = PinTheme(
      width: Sizes.dimen_50,
      height: Sizes.dimen_50,
      textStyle: PrimaryFont.regular(Sizes.dimen_16)
          .copyWith(color: kColorTextPrimary),
      decoration: BoxDecoration(
        border: Border.all(color: kColorGrayPrimary),
        borderRadius: BorderRadius.circular(Sizes.dimen_4),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: kColorBlack),
      borderRadius: BorderRadius.circular(Sizes.dimen_4),
    );

    final submittedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: kColorBlack),
      borderRadius: BorderRadius.circular(Sizes.dimen_4),
    );

    return AppScaffold(
      child: AppPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppHeader(
              title: Languages.verifyOtpTitle.translator(context),
              text: Languages.verifyOtpSubTitle.translator(context),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(height: screenHeight * 0.1),
            AppTextNormal(
              text: Languages.verifyOtpInput.translator(context),
              textColor: kColorGraySecondary,
              textSize: Sizes.dimen_14,
            ),
            const SizedBox(
              height: Sizes.dimen_16,
            ),
            Pinput(
              length: 6,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              submittedPinTheme: submittedPinTheme,
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
            ),
            const SizedBox(
              height: Sizes.dimen_26,
            ),
            SizedBox(
              width: double.infinity,
              child: AppButton(
                text: Languages.verifyOtpConfirmButton,
                onPressed: () {},
              ),
            ),
            SizedBox(height: screenHeight * 0.2),
          ],
        ),
      ),
    );
  }
}
