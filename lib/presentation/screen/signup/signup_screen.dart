import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/di/get_it.dart';
import 'package:hunty/presentation/bloc/signup/signup_cubit.dart';
import 'package:hunty/presentation/loading/loading_circle.dart';
import 'package:hunty/presentation/screen/signup/signup_input_widget.dart';
import 'package:hunty/presentation/state/SignupState.dart';
import 'package:hunty/presentation/widgets/app_alert.dart';
import 'package:hunty/presentation/widgets/app_error.dart';
import 'package:hunty/presentation/widgets/app_header.dart';
import 'package:hunty/presentation/widgets/app_padding.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late SignupCubit _signupCubit;

  @override
  void initState() {
    super.initState();
    _signupCubit = getItInstance<SignupCubit>();
  }

  @override
  void dispose() {
    super.dispose();
    _signupCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _signupCubit,
      child: AppScaffold(
        resizeToAvoidBottomInset: true,
        child: Stack(
          children: [
            AppPadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppHeader(
                    title: Languages.signUpTitle.translator(context),
                    text: Languages.signUpSubTitle.translator(context),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  SignUpInputWidget(
                    onPressed: (firstName, lastName, email, password,
                        confirmPassword) {
                      FocusScope.of(context).unfocus();
                      _signupCubit.signup(firstName, lastName, email,
                          password, confirmPassword);
                    },
                  ),
                ],
              ),
            ),
            BlocBuilder<SignupCubit, SignupState>(
              builder: (BuildContext context, SignupState state) {
                if (state is SignupSuccess) {
                  WidgetsBinding.instance.addPostFrameCallback(
                        (_) {
                      showAlert(Languages.signUpAccountAccess.translator(context));
                      Navigator.of(context)
                          .pushReplacementNamed(RouteList.dashboard);
                    },
                  );
                } else if (state is Loading) {
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.black.withOpacity(0.1),
                    child: const LoadingCircle(),
                  );
                } else if (state is SignupError) {
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.black.withOpacity(0.1),
                    child: AppError(
                      contentError: state.message,
                      exceptionType: state.type,
                      onPressed: () => {},
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
