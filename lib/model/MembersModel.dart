// To parse this JSON data, do
//
//     final membersModel = membersModelFromJson(jsonString);

import 'dart:convert';

MembersModel membersModelFromJson(String str) => MembersModel.fromJson(json.decode(str));

String membersModelToJson(MembersModel data) => json.encode(data.toJson());

class MembersModel {
  bool status;
  String message;
  List<Key> key;

  MembersModel({
    required this.status,
    required this.message,
    required this.key,
  });

  factory MembersModel.fromJson(Map<String, dynamic> json) => MembersModel(
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
  String name;
  String subject;
  String joiningDate;
  String photo;

  Key({
    required this.id,
    required this.name,
    required this.subject,
    required this.joiningDate,
    required this.photo,
  });

  factory Key.fromJson(Map<String, dynamic> json) => Key(
    id: json["id"],
    name: json["name"],
    subject: json["subject"],
    joiningDate: json["joining_date"],
    photo: json["photo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "subject": subject,
    "joining_date": joiningDate,
    "photo": photo,
  };
}
