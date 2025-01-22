import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/di/get_it.dart';
import 'package:hunty/presentation/bloc/login/login_cubit.dart';
import 'package:hunty/presentation/loading/loading_circle.dart';
import 'package:hunty/presentation/screen/login/login_input_widget.dart';
import 'package:hunty/presentation/screen/login/signup_widget.dart';
import 'package:hunty/presentation/state/LoginState.dart';
import 'package:hunty/presentation/widgets/app_alert.dart';
import 'package:hunty/presentation/widgets/app_error.dart';
import 'package:hunty/presentation/widgets/app_header.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginCubit _loginCubit;

  @override
  void initState() {
    super.initState();
    _loginCubit = getItInstance<LoginCubit>();
  }

  @override
  void dispose() {
    super.dispose();
    _loginCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _loginCubit,
      child: AppScaffold(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(Sizes.dimen_20),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppHeader(
                          title: Languages.loginTitle,
                          text: Languages.loginSubTitle,
                          isBack: false,
                        ),
                        LoginInputWidget(
                          onPressed: (email, password) {
                            FocusScope.of(context).unfocus();
                            _loginCubit.login(email, password);
                          },
                          onPressedSocial: (String email) {
                            FocusScope.of(context).unfocus();
                            Navigator.of(context)
                                .pushReplacementNamed(RouteList.dashboard);
                          },
                        ),
                      ],
                    ),
                  ),
                  const SignUpWidget(),
                ],
              ),
            ),
            BlocBuilder<LoginCubit, LoginState>(
              builder: (BuildContext context, LoginState state) {
                if (state is LoginSuccess) {
                  WidgetsBinding.instance.addPostFrameCallback(
                    (_) {
                      showAlert(
                          Languages.loginAccountSuccess.translator(context));
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
                } else if (state is LoginError) {
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
