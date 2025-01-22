import 'package:hunty/common/result.dart';
import 'package:hunty/domain/entities/user_entity.dart';
import 'package:hunty/domain/repositories/auth_repository.dart';
import 'package:hunty/domain/usecase/usecase.dart';

class RecoveryPasswordUseCase extends UseCase<String, RecoveryPasswordParams>{
  final AuthRepository authRepository;

  RecoveryPasswordUseCase(this.authRepository);

  @override
  Future<Result<String>> call(RecoveryPasswordParams params){
    return authRepository.recoveryPassword(params.email);
  }
}