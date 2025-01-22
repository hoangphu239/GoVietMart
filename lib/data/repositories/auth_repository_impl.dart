import 'package:hunty/common/result.dart';
import 'package:hunty/data/data_sources/auth_remote_data_resource.dart';
import 'package:hunty/domain/entities/user_entity.dart';
import 'package:hunty/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<Result<UserEntity>> login(String email, String password) {
    return remoteDataSource.login(email, password);
  }

  @override
  Future<Result<String>> signup(String firstName, String lastName, String email, String password, String confirmPassword) {
    return remoteDataSource.signup(firstName, lastName, email, password, confirmPassword);
  }

  @override
  Future<Result<String>> recoveryPassword(String email) {
    return remoteDataSource.recoveryPassword(email);
  }
}
