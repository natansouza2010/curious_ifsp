// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String uuid;
  String? avatar;
  String? name;
  String email;

  UserModel({
    required this.uuid,
    this.avatar,
    this.name,
    required this.email,
  });

  UserModel copyWith({
    String? uuid,
    String? avatar,
    String? name,
    String? email,
  }) {
    return UserModel(
      uuid: uuid ?? this.uuid,
      avatar: avatar ?? this.avatar,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'avatar': avatar,
      'name': name,
      'email': email,
    };
  }

  factory UserModel.fromUserCredential(UserCredential userCredential) {
    return UserModel(
        uuid: userCredential.user?.uid ?? "",
        avatar: userCredential.user?.photoURL,
        name: userCredential.user?.displayName,
        email: userCredential.user?.email ?? "");
  }

  factory UserModel.fromUser(User? user) {
    return UserModel(
        uuid: user?.uid ?? "",
        avatar: user?.photoURL,
        name: user?.displayName,
        email: user?.email ?? "");
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uuid: map['uuid'] as String,
      avatar: map['avatar'] != null ? map['avatar'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(uuid: $uuid, avatar: $avatar, name: $name, email: $email)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.uuid == uuid &&
        other.avatar == avatar &&
        other.name == name &&
        other.email == email;
  }

  @override
  int get hashCode {
    return uuid.hashCode ^ avatar.hashCode ^ name.hashCode ^ email.hashCode;
  }
}
