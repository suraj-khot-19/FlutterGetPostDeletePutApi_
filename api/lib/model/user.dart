import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    this.createdAt,
    this.name,
    this.avatar,
    this.id,
    this.age,
    this.education,
  });

  DateTime? createdAt;
  String? name;
  String? avatar;
  String? id;
  String? education;
  int? age;

  factory User.fromJson(Map<String, dynamic> json) => User(
        createdAt: DateTime.parse(json["createdAt"]),
        name: json["name"],
        avatar: json["avatar"],
        id: json["id"],
        age: json['age'],
        education: json['education'],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
        "education": education,
        // "education": education != null
        //     ? String(education => x.toJson()),
        //     : [],
      };
}
