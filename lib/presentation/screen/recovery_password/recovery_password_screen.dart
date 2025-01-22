import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/route_constant.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/di/get_it.dart';
import 'package:hunty/presentation/bloc/recovery_password/recovery_password_cubit.dart';
import 'package:hunty/presentation/loading/loading_circle.dart';
import 'package:hunty/presentation/screen/recovery_password/phone_or_email_input_widget.dart';
import 'package:hunty/presentation/state/RecoveryPasswordState.dart';
import 'package:hunty/presentation/widgets/app_error.dart';
import 'package:hunty/presentation/widgets/app_header.dart';
import 'package:hunty/presentation/widgets/app_padding.dart';
import 'package:hunty/presentation/widgets/app_scaffold.dart';


class RecoveryPasswordScreen extends StatefulWidget {
  const RecoveryPasswordScreen({super.key});

  @override
  State<RecoveryPasswordScreen> createState() => _RecoveryPasswordScreenState();
}

class _RecoveryPasswordScreenState extends State<RecoveryPasswordScreen> {
  late RecoveryPasswordCubit _recoveryCubit;

  @override
  void initState() {
    _recoveryCubit = getItInstance<RecoveryPasswordCubit>();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _recoveryCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => _recoveryCubit,
      child: AppScaffold(
        resizeToAvoidBottomInset: false,
        child: Stack(
          children: [
            AppPadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppHeader(
                    title:
                    Languages.recoveryPasswordTitle.translator(context),
                    text: Languages.recoveryPasswordSubTitle
                        .translator(context),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(height: screenHeight * 0.15),
                  PhoneOrEmailInputWidget(
                    onPressed: (email) {
                      FocusScope.of(context).unfocus();
                      _recoveryCubit.recoveryPassword(email);
                    },
                  ),
                  SizedBox(height: screenHeight * 0.2),
                ],
              ),
            ),
            BlocBuilder<RecoveryPasswordCubit, RecoveryPasswordState>(
              builder: (BuildContext context, RecoveryPasswordState state) {
                if (state is RecoveryPasswordSuccess) {
                  WidgetsBinding.instance.addPostFrameCallback(
                        (_) {
                      Navigator.of(context).pushNamed(RouteList.verifyOtp);
                    },
                  );
                } else if (state is Loading) {
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.black.withOpacity(0.1),
                    child: const LoadingCircle(),
                  );
                } else if (state is RecoveryPasswordError) {
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
