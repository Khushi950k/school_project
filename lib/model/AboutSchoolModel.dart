// To parse this JSON data, do
//
//     final aboutSchoolModel = aboutSchoolModelFromJson(jsonString);

import 'dart:convert';

AboutSchoolModel aboutSchoolModelFromJson(String str) => AboutSchoolModel.fromJson(json.decode(str));

String aboutSchoolModelToJson(AboutSchoolModel data) => json.encode(data.toJson());

class AboutSchoolModel {
  bool status;
  String message;
  List<Key> key;

  AboutSchoolModel({
    required this.status,
    required this.message,
    required this.key,
  });

  factory AboutSchoolModel.fromJson(Map<String, dynamic> json) => AboutSchoolModel(
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
