// To parse this JSON data, do
//
//     final csDetailsModel = csDetailsModelFromJson(jsonString);

import 'dart:convert';

List<CsDetailsModel> csDetailsModelFromJson(String str) =>
    List<CsDetailsModel>.from(
        json.decode(str).map((x) => CsDetailsModel.fromJson(x)));

String csDetailsModelToJson(List<CsDetailsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CsDetailsModel {
  CsDetailsModel({
    required this.zid,
    required this.xporeqnum,
    required this.xrow,
    required this.xitem,
    required this.xdesc,
    required this.xqtyreq1,
    required this.xqtyapv1,
    required this.xqtypor,
    required this.xqtyord1,
    required this.xunitpur,
  });

  int zid;
  dynamic xporeqnum;
  int xrow;
  dynamic xitem;
  dynamic xdesc;
  dynamic xqtyreq1;
  dynamic xqtyapv1;
  dynamic xqtypor;
  dynamic xqtyord1;
  dynamic xunitpur;

  factory CsDetailsModel.fromJson(Map<String, dynamic> json) => CsDetailsModel(
        zid: json["zid"],
        xporeqnum: json["xporeqnum"],
        xrow: json["xrow"],
        xitem: json["xitem"],
        xdesc: json["xdesc"],
        xqtyreq1: json["xqtyreq1"],
        xqtyapv1: json["xqtyapv1"],
        xqtypor: json["xqtypor"],
        xqtyord1: json["xqtyord1"],
        xunitpur: json["xunitpur"],
      );

  Map<String, dynamic> toJson() => {
        "zid": zid,
        "xporeqnum": xporeqnum,
        "xrow": xrow,
        "xitem": xitem,
        "xdesc": xdesc,
        "xqtyreq1": xqtyreq1,
        "xqtyapv1": xqtyapv1,
        "xqtypor": xqtypor,
        "xqtyord1": xqtyord1,
        "xunitpur": xunitpur,
      };
}
