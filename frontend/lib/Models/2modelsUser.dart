// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User2 usuarioFromJson(String str) =>
    User2.fromJson(json.decode(str));

String usuarioToJson(User2 data) =>
    json.encode(data.toJson());

class User2 {
  User2({
    this.id,
    this.name,
    this.email,
    this.age,
  });

  String id;
  String name;
  String email;
  String age;

  factory User2.fromJson(Map<String, dynamic> json) => User2(
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