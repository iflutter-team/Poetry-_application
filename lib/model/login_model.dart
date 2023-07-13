// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  int? success;
  int? status;
  String? message;
  String? token;
  Data? data;

  LoginModel({
    this.success,
    this.status,
    this.message,
    this.token,
    this.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
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
  int? userId;
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
