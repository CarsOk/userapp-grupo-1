// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
    User({
        this.name,
        this.email,
        this.age,
    });

    String name;
    String email;
    String age;

    factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        email: json["email"],
        age: json["age"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "age": age,
    };
}
