import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:hunty/domain/entities/user_entity.dart';

abstract class SignupState extends Equatable{
  @override
  List<Object?> get props => [];
}

class Init extends SignupState{}
class Loading extends SignupState{}
class SignupSuccess extends SignupState{
  final String message;
  SignupSuccess(this.message);
  @override
  List<Object> get props => [message];
}

class SignupError extends SignupState{
  final String message;
  final DioExceptionType type;
  SignupError(this.message, this.type);
  @override
  List<Object> get props => [message, type];
}