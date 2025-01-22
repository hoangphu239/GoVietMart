import 'package:hunty/common/result.dart';
import 'package:hunty/domain/entities/user_entity.dart';
import 'package:hunty/domain/repositories/auth_repository.dart';
import 'package:hunty/domain/usecase/usecase.dart';

class SignupUseCase extends UseCase<String, SignupParams> {
  final AuthRepository authRepository;

  SignupUseCase(this.authRepository);

  @override
  Future<Result<String>> call(SignupParams params) {
    return authRepository.signup(params.firstName, params.lastName,
        params.email, params.password, params.confirmPassword);
  }
}
