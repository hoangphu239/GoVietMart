import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:hunty/domain/entities/user_entity.dart';

abstract class LoginState extends Equatable{
  @override
  List<Object?> get props => [];
}

class Init extends LoginState{}
class Loading extends LoginState{}
class LoginSuccess extends LoginState{
  final UserEntity userEntity;
  LoginSuccess(this.userEntity);
  @override
  List<Object> get props => [userEntity];
}

class LoginError extends LoginState{
  final String message;
  final DioExceptionType type;
  LoginError(this.message, this.type);
  @override
  List<Object> get props => [message, type];
}