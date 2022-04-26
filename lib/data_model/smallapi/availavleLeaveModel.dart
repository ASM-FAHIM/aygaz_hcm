// To parse this JSON data, do
//
//     final availebleLeaveModel = availebleLeaveModelFromJson(jsonString);

import 'dart:convert';

List<AvailebleLeaveModel> availebleLeaveModelFromJson(String str) => List<AvailebleLeaveModel>.from(json.decode(str).map((x) => AvailebleLeaveModel.fromJson(x)));

String availebleLeaveModelToJson(List<AvailebleLeaveModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AvailebleLeaveModel {
  AvailebleLeaveModel({
    required this.xtypeleave,
    required this.xavailable,
    required this.xused,
    required this.xbalance,
  });

  String xtypeleave;
  String xavailable;
  String xused;
  String xbalance;

  factory AvailebleLeaveModel.fromJson(Map<String, dynamic> json) => AvailebleLeaveModel(
    xtypeleave: json["xtypeleave"],
    xavailable: json["xavailable"],
    xused: json["xused"],
    xbalance: json["xbalance"],
  );

  Map<String, dynamic> toJson() => {
    "xtypeleave": xtypeleave,
    "xavailable": xavailable,
    "xused": xused,
    "xbalance": xbalance,
  };
}
