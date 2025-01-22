import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hunty/common/constants/image_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/screen/login/login_socical_button.dart';
import 'package:hunty/presentation/widgets/app_alert.dart';
import 'package:hunty/presentation/widgets/app_button.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/presentation/widgets/app_text_field.dart';
import 'package:hunty/theme/theme.dart';
import 'package:local_auth/local_auth.dart';

class LoginInputWidget extends StatefulWidget {
  final Function(String email, String password) onPressed;
  final Function(String email) onPressedSocial;

  const LoginInputWidget(
      {super.key, required this.onPressed, required this.onPressedSocial});

  @override
  State<LoginInputWidget> createState() => _LoginInputWidgetState();
}

enum SupportState {
  unknown,
  supported,
  unSupported,
}

class _LoginInputWidgetState extends State<LoginInputWidget> {
  final LocalAuthentication auth = LocalAuthentication();
  SupportState supportState = SupportState.unknown;
  List<BiometricType>? availableBiometrics;

  late TextEditingController emailController;
  late TextEditingController passwordController;

  final GoogleSignIn googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleUser;


  @override
  void initState() {
    auth.isDeviceSupported().then((bool isSupported) => setState(() =>
        supportState =
            isSupported ? SupportState.supported : SupportState.unSupported));

    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();

    checkBiometric();
    getAvailableBiometrics();
    googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      setState(() {
        googleUser = account;
      });
      googleSignIn.signInSilently();
    });
  }

  Future<UserCredential> signIn() async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    setState(() {
      if (googleUser != null) {
        showAlert(Languages.loginGoogleSuccess.translator(context));
        widget.onPressedSocial(googleUser.email);
      }
    });

    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> signOut() async {
    googleSignIn.disconnect();
  }

  Future<void> loginFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      final AccessToken accessToken = result.accessToken!;
      var userData = await FacebookAuth.i.getUserData(
        fields: "id,name,email",
      );
      setState(() {
        final email = userData['email'];
        showAlert(Languages.loginFacebookSuccess.translator(context));
        widget.onPressedSocial(email);
      });
    }
  }

  Future<void> logoutFacebook() async {
    await FacebookAuth.instance.logOut();
  }

  Future<void> checkBiometric() async {
    late bool canCheckBiometric;
    try {
      canCheckBiometric = await auth.canCheckBiometrics;
      print("Biometric supported: $canCheckBiometric");
    } on PlatformException catch (e) {
      print(e);
      canCheckBiometric = false;
    }
  }

  Future<void> getAvailableBiometrics() async {
    late List<BiometricType> biometricTypes;
    try {
      biometricTypes = await auth.getAvailableBiometrics();
      print("supported biometrics $biometricTypes");
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) {
      return;
    }
    setState(() {
      availableBiometrics = biometricTypes;
    });
  }

  Future<void> authenticateWithBiometrics() async {
    try {
      final authenticated = await auth.authenticate(
          localizedReason: 'Authenticate with fingerprint or Face ID',
          options: const AuthenticationOptions(
            stickyAuth: true,
            biometricOnly: true,
          ));

      if (!mounted) {
        return;
      }
      if (authenticated) {
        setState(() {
          showAlert(Languages.loginFaceIdSuccess.translator(context));
        });
        Navigator.of(context).pushReplacementNamed(RouteList.dashboard);
      }
    } on PlatformException catch (e) {
      print(e);
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          controller: emailController,
          hintText: Languages.loginHintEnterAccount,
          inputType: TextInputType.emailAddress,
          action: TextInputAction.next,
        ),
        const SizedBox(height: Sizes.dimen_8),
        AppPasswordTextField(
          controller: passwordController,
          hintText: Languages.loginHintEnterPassword.translator(context),
          action: TextInputAction.done,
        ),
        const SizedBox(height: Sizes.dimen_20),
        AppTextNormal(
          text: Languages.loginForgotPassword.translator(context),
          alignment: Alignment.centerRight,
          onPressed: () {
            Navigator.of(context).pushNamed(RouteList.recoveryPassword);
          },
        ),
        const SizedBox(height: Sizes.dimen_20),
        Row(
          children: [
            Expanded(
              child: AppOutlineButton(
                icon: Image.asset(ImageConstant.facialRecognition,
                    width: Sizes.dimen_27, height: Sizes.dimen_24, fit: BoxFit.fill,),
                paddingTop: Sizes.dimen_10,
                paddingBottom: Sizes.dimen_10,
                text: Languages.loginFaceIdButton.translator(context),
                onPressed: () => {
                  authenticateWithBiometrics()
                },
              ),
            ),
            const SizedBox(width: Sizes.dimen_32),
            Expanded(
              child: AppButton(
                  text: Languages.loginButton,
                  onPressed: () => widget.onPressed(
                      emailController.text, passwordController.text)),
            ),
          ],
        ),
        const SizedBox(height: Sizes.dimen_20),
        AppTextNormal(
          text: Languages.loginWithSocial.translator(context),
          alignment: Alignment.center,
          textSize: Sizes.dimen_14,
          textColor: kColorTextSecondary,
        ),
        const SizedBox(height: Sizes.dimen_20),
        LoginSocialButton(
          onGooglePressed: () {
            signIn();
          },
          onFacebookPressed: () {
            loginFacebook();
          },
        ),
      ],
    );
  }
}
