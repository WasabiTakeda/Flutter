// To parse this JSON data, do
//
//     final provinceDetail = provinceDetailFromJson(jsonString);

import 'dart:convert';

ProvinceDetail provinceDetailFromJson(String str) =>
    ProvinceDetail.fromJson(json.decode(str));

String provinceDetailToJson(ProvinceDetail data) => json.encode(data.toJson());

class ProvinceDetail {
  ProvinceDetail({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.placeCount,
    required this.shortDescription,
  });

  int id;
  String name;
  String imageUrl;
  int placeCount;
  String shortDescription;

  factory ProvinceDetail.fromJson(Map<String, dynamic> json) => ProvinceDetail(
        id: json["id"],
        name: json["name"],
        imageUrl: json["imageUrl"],
        placeCount: json["placeCount"],
        shortDescription: json["shortDescription"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "imageUrl": imageUrl,
        "placeCount": placeCount,
        "shortDescription": shortDescription,
      };
}
