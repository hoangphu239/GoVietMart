import 'package:hunty/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required int id,
    required String email,
    required String name,
    required String first_name,
    required String last_name,
    required String phone,
    required String yearOfBirth,
    required int follower,
    required int following,
    required double rating,
  }) : super(
          id: id,
          email: email,
          name: name,
          first_name: first_name,
          last_name: last_name,
          phone: phone,
          yearOfBirth: yearOfBirth,
          follower: follower,
          following: following,
          rating: rating,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      email: json['email'],
      phone: json['phone'],
      yearOfBirth: json['yearOfBirth'],
      follower: json['follower'],
      following: json['following'],
      rating: json['rating'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['first_name'] = first_name;
    data['last_name'] = last_name;
    data['email'] = email;
    data['phone'] = phone;
    data['yearOfBirth'] = yearOfBirth;
    data['follower'] = follower;
    data['following'] = following;
    data['rating'] = rating;
    return data;
  }
}

UserModel getUser() {
  return UserModel(
      id: 1,
      name: 'Tony Stark',
      first_name: 'Tony',
      last_name: 'Stark',
      email: 'tony@hunty.com',
      phone: '0908750873',
      yearOfBirth: '1990',
      follower: 12,
      following: 20,
      rating: 4.5);
}
