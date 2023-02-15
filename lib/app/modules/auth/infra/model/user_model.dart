// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  String avatar;
  String name;

  UserModel({
    required this.avatar,
    required this.name,
  });

  UserModel copyWith({
    String? avatar,
    String? name,
  }) {
    return UserModel(
      avatar: avatar ?? this.avatar,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avatar': avatar,
      'name': name,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      avatar: map['avatar'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserModel(avatar: $avatar, name: $name)';

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.avatar == avatar && other.name == name;
  }

  @override
  int get hashCode => avatar.hashCode ^ name.hashCode;
}
