// To parse this JSON data, do
//
//     final sliderHomeScreen = sliderHomeScreenFromJson(jsonString);

import 'dart:convert';

SliderHomeScreen sliderHomeScreenFromJson(String str) => SliderHomeScreen.fromJson(json.decode(str));

String sliderHomeScreenToJson(SliderHomeScreen data) => json.encode(data.toJson());

class SliderHomeScreen {
  int? success;
  int? status;
  String? message;
  List<Datum>? data;

  SliderHomeScreen({
    this.success,
    this.status,
    this.message,
    this.data,
  });

  factory SliderHomeScreen.fromJson(Map<String, dynamic> json) => SliderHomeScreen(
    success: json["success"],
    status: json["status"],
    message: json["message"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "status": status,
    "message": message,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  String? name;
  String? image;

  Datum({
    this.name,
    this.image,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    name: json["name"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "image": image,
  };
}
