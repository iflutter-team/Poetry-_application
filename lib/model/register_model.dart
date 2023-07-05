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
  List<String>? fields;

  RegisterModel({
    this.success,
    this.status,
    this.message,
    this.fields,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
    success: json["success"],
    status: json["status"],
    message: json["message"],
    fields: json["fields"] == null ? [] : List<String>.from(json["fields"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "status": status,
    "message": message,
    "fields": fields == null ? [] : List<dynamic>.from(fields!.map((x) => x)),
  };
}
