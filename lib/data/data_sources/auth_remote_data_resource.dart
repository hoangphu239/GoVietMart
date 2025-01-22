import 'package:hunty/common/result.dart';
import 'package:hunty/common/typedefs.dart';
import 'package:hunty/data/models/user_model.dart';
import 'package:hunty/data/remote/base_repository.dart';
import 'package:hunty/data/remote/remote_client.dart';

abstract class AuthRemoteDataSource extends BaseRepository {
  Future<Result<UserModel>> login(String email, String password);

  Future<Result<String>> signup(String firstName, String lastName, String email,
      String password, String confirmPassword);

  Future<Result<String>> recoveryPassword(String email);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final RemoteClient _client;

  AuthRemoteDataSourceImpl(this._client);

  @override
  Future<Result<UserModel>> login(String email, String password) {
    QueryParams params = {"email": email, "password": password, "device_name": "web"};
    return getResultApi(
      () => _client.post('customer/login', params, null),
      (JSON json) => UserModel.fromJson(json['data']),
    );
  }

  @override
  Future<Result<String>> signup(String firstName, String lastName, String email,
      String password, String confirmPassword) {
    QueryParams params = {
      "first_name": firstName,
      "last_name": lastName,
      "email": email,
      "password": password,
      "password_confirmation": confirmPassword,
    };
    return getResultApi(
      () => _client.post('customer/register', params, null), (JSON json) => json['message'] as String,
    );
  }

  @override
  Future<Result<String>> recoveryPassword(String email) {
    QueryParams params = {"email": email};
    return getResultApi(
          () => _client.post('customer/forgot-password', params, null), (JSON json) => json['message'] as String,
    );
  }
}
