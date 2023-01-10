import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String userID;
  final String? uid;
  final String? token;

  const User({required this.userID, this.uid, this.token});
  static const empty = User(userID: '');

  bool get isEmpty => this == User.empty;
  bool get isNotEmpty => this != User.empty;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(userID: json['userID'], uid: json["uid"], token: json['token']);
  }

  @override
  List<Object?> get props => [userID, uid, token];
}
