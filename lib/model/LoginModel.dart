// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  bool status;
  String message;
  List<Key> key;

  LoginModel({
    required this.status,
    required this.message,
    required this.key,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
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
  String sId;
  String gName;
  String gOccupation;
  String gQualification;
  String gIncome;
  DateTime gDob;
  String gAddress;
  String gState;
  String gCity;
  String gZip;
  String gMob;
  String homePhone;
  String gEmail;
  String gPhoto;
  String status;
  String password;
  String mName;
  String mQualification;
  String mOccu;
  String mMobile;
  String mDob;
  String mPhoto;
  String parentsAnniversaryDate;
  String formNo;
  String quota;
  String tc;
  String deviceName;
  String deviceToken;
  String uuid;
  String studentName;
  String joinClass;
  String transportRequire;
  String schoolId;
  String className;
  String photo;
  String permisition;
  String token;

  Key({
    required this.id,
    required this.sId,
    required this.gName,
    required this.gOccupation,
    required this.gQualification,
    required this.gIncome,
    required this.gDob,
    required this.gAddress,
    required this.gState,
    required this.gCity,
    required this.gZip,
    required this.gMob,
    required this.homePhone,
    required this.gEmail,
    required this.gPhoto,
    required this.status,
    required this.password,
    required this.mName,
    required this.mQualification,
    required this.mOccu,
    required this.mMobile,
    required this.mDob,
    required this.mPhoto,
    required this.parentsAnniversaryDate,
    required this.formNo,
    required this.quota,
    required this.tc,
    required this.deviceName,
    required this.deviceToken,
    required this.uuid,
    required this.studentName,
    required this.joinClass,
    required this.transportRequire,
    required this.schoolId,
    required this.className,
    required this.photo,
    required this.permisition,
    required this.token,
  });

  factory Key.fromJson(Map<String, dynamic> json) => Key(
    id: json["id"],
    sId: json["s_id"],
    gName: json["g_name"],
    gOccupation: json["g_occupation"],
    gQualification: json["g_qualification"],
    gIncome: json["g_income"],
    gDob: DateTime.parse(json["g_dob"]),
    gAddress: json["g_address"],
    gState: json["g_state"],
    gCity: json["g_city"],
    gZip: json["g_zip"],
    gMob: json["g_mob"],
    homePhone: json["home_phone"],
    gEmail: json["g_email"],
    gPhoto: json["g_photo"],
    status: json["status"],
    password: json["password"],
    mName: json["m_name"],
    mQualification: json["m_qualification"],
    mOccu: json["m_occu"],
    mMobile: json["m_mobile"],
    mDob: json["m_dob"],
    mPhoto: json["m_photo"],
    parentsAnniversaryDate: json["parents_anniversary_date"],
    formNo: json["form_no"],
    quota: json["quota"],
    tc: json["tc"],
    deviceName: json["device_name"],
    deviceToken: json["device_token"],
    uuid: json["uuid"],
    studentName: json["student_name"],
    joinClass: json["join_class"],
    transportRequire: json["transport_require"],
    schoolId: json["school_id"],
    className: json["class_name"],
    photo: json["photo"],
    permisition: json["permisition"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "s_id": sId,
    "g_name": gName,
    "g_occupation": gOccupation,
    "g_qualification": gQualification,
    "g_income": gIncome,
    "g_dob": "${gDob.year.toString().padLeft(4, '0')}-${gDob.month.toString().padLeft(2, '0')}-${gDob.day.toString().padLeft(2, '0')}",
    "g_address": gAddress,
    "g_state": gState,
    "g_city": gCity,
    "g_zip": gZip,
    "g_mob": gMob,
    "home_phone": homePhone,
    "g_email": gEmail,
    "g_photo": gPhoto,
    "status": status,
    "password": password,
    "m_name": mName,
    "m_qualification": mQualification,
    "m_occu": mOccu,
    "m_mobile": mMobile,
    "m_dob": mDob,
    "m_photo": mPhoto,
    "parents_anniversary_date": parentsAnniversaryDate,
    "form_no": formNo,
    "quota": quota,
    "tc": tc,
    "device_name": deviceName,
    "device_token": deviceToken,
    "uuid": uuid,
    "student_name": studentName,
    "join_class": joinClass,
    "transport_require": transportRequire,
    "school_id": schoolId,
    "class_name": className,
    "photo": photo,
    "permisition": permisition,
    "token": token,
  };
}
