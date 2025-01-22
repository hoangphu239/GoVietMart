import 'package:flutter/material.dart';
import 'package:hunty/common/constants/image_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';
import 'package:introduction_screen/introduction_screen.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacementNamed(RouteList.login);
  }

  Widget _buildImage(String assetName) {
    return Image.asset(
      assetName,
      width: double.infinity,
      height: Sizes.dimen_300,
      alignment: Alignment.center,
    );
  }

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      imageFlex: 2,
      bodyFlex: 1,
      titleTextStyle:
          PrimaryFont.regular(Sizes.dimen_16).copyWith(color: kColorTextButton),
      bodyTextStyle:
          PrimaryFont.regular(Sizes.dimen_16).copyWith(color: kColorTextButton),
      imagePadding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_20),
      bodyAlignment: Alignment.bottomCenter,
      pageColor: kColorWhite,
    );
    return AppScaffold(
        child: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          animationDuration: 0,
          pages: [
            PageViewModel(
              title: "",
              body: Languages.welcomeTextFirst.translator(context),
              image: _buildImage(ImageConstant.welcomeFirst),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "",
              body: Languages.welcomeTextSecond.translator(context),
              image: _buildImage(ImageConstant.welcomeSecond),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "",
              body: Languages.welcomeTextThird.translator(context),
              image: _buildImage(ImageConstant.welcomeThirst),
              decoration: pageDecoration,
            ),
          ],
          onDone: () => _onIntroEnd(context),
          onSkip: () => _onIntroEnd(context),
          showSkipButton: true,
          showNextButton: false,
          skipOrBackFlex: 0,
          dotsFlex: 3,
          nextFlex: 1,
          showBackButton: false,
          skip: InkWell(
            child: AppTextNormal(
              text: Languages.welcomeSkipButton.translator(context),
              textColor: kColorTextButton,
            ),
          ),
          next: const SizedBox(width: Sizes.dimen_10),
          done: AppTextNormal(
            text: Languages.welcomeDoneButton.translator(context),
            textColor: kColorTextButton,
          ),
          curve: Curves.fastLinearToSlowEaseIn,
          controlsMargin: const EdgeInsets.all(Sizes.dimen_16),
          controlsPadding: const EdgeInsets.fromLTRB(
              Sizes.dimen_8, Sizes.dimen_4, Sizes.dimen_8, Sizes.dimen_4),
          dotsDecorator: const DotsDecorator(
            size: Size(Sizes.dimen_10, Sizes.dimen_10),
            color: kColorGrayPrimary,
            activeColor: kColorYellow,
            activeSize: Size(Sizes.dimen_22, Sizes.dimen_10),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(Sizes.dimen_24)),
            ),
          ),
          dotsContainerDecorator: const ShapeDecoration(
            color: kColorWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(Sizes.dimen_8)),
            ),
          ),
        ),
    );
  }
}
