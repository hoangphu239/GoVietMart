import 'package:hunty/common/result.dart';
import 'package:hunty/domain/entities/user_entity.dart';
import 'package:hunty/domain/repositories/auth_repository.dart';
import 'package:hunty/domain/usecase/usecase.dart';

class LoginUseCase extends UseCase<UserEntity, LoginParams>{
  final AuthRepository authRepository;

  LoginUseCase(this.authRepository);

  @override
  Future<Result<UserEntity>> call(LoginParams params){
    return authRepository.login(params.email, params.password);
  }
}