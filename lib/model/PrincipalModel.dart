// To parse this JSON data, do
//
//     final principalModel = principalModelFromJson(jsonString);

import 'dart:convert';

PrincipalModel principalModelFromJson(String str) => PrincipalModel.fromJson(json.decode(str));

String principalModelToJson(PrincipalModel data) => json.encode(data.toJson());

class PrincipalModel {
  bool status;
  String message;
  List<Key> key;

  PrincipalModel({
    required this.status,
    required this.message,
    required this.key,
  });

  factory PrincipalModel.fromJson(Map<String, dynamic> json) => PrincipalModel(
    status: json["status"],
    message: json["message"],
    key: List<Key>.from(json["key"].map((x) => Key.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "key": List<dynamic>.from(key.map((x) => x.toJson())),
  };
}

class Key {
  String id;
  String title;
  String description;
  String addDate;
  String photo;

  Key({
    required this.id,
    required this.title,
    required this.description,
    required this.addDate,
    required this.photo,
  });

  factory Key.fromJson(Map<String, dynamic> json) => Key(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    addDate: json["add_date"],
    photo: json["photo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "add_date": addDate,
    "photo": photo,
  };
}
