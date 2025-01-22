import 'package:hunty/common/result.dart';
import 'package:hunty/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Result<UserEntity>> login(String email, String password);

  Future<Result<String>> signup(String firstName, String lastName,
      String email, String password, String confirmPassword);

  Future<Result<String>> recoveryPassword(String email);
}
