// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  int? success;
  int? status;
  String? message;
  String? token;
  Data? data;

  RegisterModel({
    this.success,
    this.status,
    this.message,
    this.token,
    this.data,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
    success: json["success"],
    status: json["status"],
    message: json["message"],
    token: json["token"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "status": status,
    "message": message,
    "token": token,
    "data": data?.toJson(),
  };
}

class Data {
  String? userId;
  String? fullname;
  String? profile;
  String? username;
  String? gender;
  String? dob;

  Data({
    this.userId,
    this.fullname,
    this.profile,
    this.username,
    this.gender,
    this.dob,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    userId: json["user_id"],
    fullname: json["fullname"],
    profile: json["profile"],
    username: json["username"],
    gender: json["gender"],
    dob: json["dob"],
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId,
    "fullname": fullname,
    "profile": profile,
    "username": username,
    "gender": gender,
    "dob": dob,
  };
}
