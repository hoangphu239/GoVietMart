import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hunty/domain/entities/user_entity.dart';
import 'package:hunty/domain/usecase/recovery_password_usecase.dart';
import 'package:hunty/presentation/state/RecoveryPasswordState.dart';

class RecoveryPasswordCubit extends Cubit<RecoveryPasswordState>{
  final RecoveryPasswordUseCase useCase;
  RecoveryPasswordCubit(this.useCase) : super(Init());

  Future<void> recoveryPassword(String email) async{
      emit(Loading());
      (await useCase(RecoveryPasswordParams(email))).when(
          success: (data) => {
            emit(RecoveryPasswordSuccess(data!))
          },
          error: (message, type) => {
            emit(RecoveryPasswordError(message, type))
          }
      );
  }
}