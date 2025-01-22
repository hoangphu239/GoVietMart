import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hunty/domain/entities/user_entity.dart';
import 'package:hunty/domain/usecase/signup_usecase.dart';
import 'package:hunty/presentation/state/SignupState.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupUseCase useCase;

  SignupCubit(this.useCase) : super(Init());

  Future<void> signup(String firstName, String lastName, String email,
      String password, String confirmPassword) async {
    emit(Loading());
    (await useCase(SignupParams(firstName, lastName, email, password, confirmPassword))).when(
        success: (data) => {emit(SignupSuccess(data!))},
        error: (message, type) => {emit(SignupError(message, type))});
  }
}
