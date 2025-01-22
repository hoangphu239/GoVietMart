import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:hunty/domain/entities/user_entity.dart';

abstract class RecoveryPasswordState extends Equatable{
  @override
  List<Object?> get props => [];
}

class Init extends RecoveryPasswordState{}
class Loading extends RecoveryPasswordState{}
class RecoveryPasswordSuccess extends RecoveryPasswordState{
  final String message;
  RecoveryPasswordSuccess(this.message);
  @override
  List<Object> get props => [message];
}

class RecoveryPasswordError extends RecoveryPasswordState{
  final String message;
  final DioExceptionType type;
  RecoveryPasswordError(this.message, this.type);
  @override
  List<Object> get props => [message, type];
}