// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) =>
    User.fromJson(json.decode(str));

String userToJson(User data) =>
    json.encode(data.toJson());

class User {
  User({
    this.id,
    this.name,
    this.email,
    this.age,
  });

  String id;
  String name;
  String email;
  String age;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"].toString(),
        name: json["name"],
        email: json["email"],
        age: json["age"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "age": age,
      };
}