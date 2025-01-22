import 'package:equatable/equatable.dart';

abstract class UserEntity {
  final int id;
  final String email;
  final String name;
  final String first_name;
  final String last_name;
  final String phone;
  final String yearOfBirth;
  final int follower;
  final int following;
  final double rating;

  UserEntity({
    required this.id,
    required this.name,
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.phone,
    required this.yearOfBirth,
    required this.follower, required this.following,
    required this.rating,
  });
}

class LoginParams extends Equatable {
  final String email;
  final String password;

  const LoginParams(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}

class SignupParams extends Equatable {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String confirmPassword;

  const SignupParams(this.firstName, this.lastName, this.email, this.password, this.confirmPassword);

  @override
  List<Object> get props => [firstName, lastName, email, password, confirmPassword];
}

class RecoveryPasswordParams extends Equatable {
  final String email;

  const RecoveryPasswordParams(this.email);

  @override
  List<Object> get props => [email];
}