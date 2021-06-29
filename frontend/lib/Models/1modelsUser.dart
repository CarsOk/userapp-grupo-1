// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    this.postId,
    this.id,
    this.name,
    this.email,
    this.age,
  });

  String postId;
  String id;
  String name;
  String email;
  String age;

  factory User.fromJson(Map<String, dynamic> json) => User(
        postId: json["postId"],
        id: json["id"].toString(),
        name: json["name"],
        email: json["email"],
        age: json["age"],
      );

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "age": age,
      };
}
