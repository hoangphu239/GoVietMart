import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hunty/domain/entities/user_entity.dart';
import 'package:hunty/domain/usecase/login_usecase.dart';
import 'package:hunty/presentation/state/LoginState.dart';

class LoginCubit extends Cubit<LoginState>{
  final LoginUseCase useCase;
  LoginCubit(this.useCase) : super(Init());

  Future<void> login(String email, String password) async{
      emit(Loading());
      (await useCase(LoginParams(email, password))).when(
          success: (data) => {
            emit(LoginSuccess(data!))
          },
          error: (message, type) => {
            emit(LoginError(message, type))
          }
      );
  }
}