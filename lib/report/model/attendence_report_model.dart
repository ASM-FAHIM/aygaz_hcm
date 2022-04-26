// // To parse this JSON data, do
// //
// //     final attendenceReportModel = attendenceReportModelFromJson(jsonString);
//
// import 'dart:convert';
//
// List<AttendenceReportModel> attendenceReportModelFromJson(String str) => List<AttendenceReportModel>.from(json.decode(str).map((x) => AttendenceReportModel.fromJson(x)));
//
// String attendenceReportModelToJson(List<AttendenceReportModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class AttendenceReportModel {
//   AttendenceReportModel({
//     required this.zid,
//     required this.zorg,
//     required this.xmadd,
//     required this.xdate,
//     required this.xstaff,
//     required this.xposition,
//     required this.xname,
//     required this.xintime,
//     required this.xouttime,
//     required this.xstatus,
//     required this.xnote,
//     required this.xdepartment,
//     required this.xdesignation,
//     required this.xconcern,
//     required this.xdayname,
//     required this.xemplate,
//     required this.xstatuslate,
//     required this.xempel,
//     required this.xstatusel,
//     required this.xworktime,
//     required this.xsid,
//     required this.xsname,
//     required this.xshift,
//   });
//
//   int zid;
//   dynamic zorg;
//   dynamic xmadd;
//   Xdate xdate;
//   dynamic xstaff;
//   dynamic xposition;
//   dynamic xname;
//   dynamic xintime;
//   dynamic xouttime;
//   dynamic xstatus;
//   dynamic xnote;
//   dynamic xdepartment;
//   dynamic xdesignation;
//   dynamic xconcern;
//   dynamic xdayname;
//   dynamic xemplate;
//   dynamic xstatuslate;
//   dynamic xempel;
//   dynamic xstatusel;
//   dynamic xworktime;
//   dynamic xsid;
//   dynamic xsname;
//   dynamic xshift;
//
//   factory AttendenceReportModel.fromJson(Map<String, dynamic> json) => AttendenceReportModel(
//     zid: json["zid"],
//     zorg: json["zorg"],
//     xmadd: json["xmadd"],
//     xdate: Xdate.fromJson(json["xdate"]),
//     xstaff: json["xstaff"],
//     xposition: json["xposition"],
//     xname: json["xname"],
//     xintime: json["xintime"],
//     xouttime: json["xouttime"],
//     xstatus: json["xstatus"],
//     xnote: json["xnote"],
//     xdepartment: json["xdepartment"],
//     xdesignation: json["xdesignation"],
//     xconcern: json["xconcern"],
//     xdayname: json["xdayname"],
//     xemplate: json["xemplate"],
//     xstatuslate: json["xstatuslate"],
//     xempel: json["xempel"],
//     xstatusel: json["xstatusel"],
//     xworktime: json["xworktime"],
//     xsid: json["xsid"],
//     xsname: json["xsname"],
//     xshift: json["xshift"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "zid": zid,
//     "zorg": zorg,
//     "xmadd": xmadd,
//     "xdate": xdate.toJson(),
//     "xstaff": xstaff,
//     "xposition": xposition,
//     "xname": xname,
//     "xintime": xintime,
//     "xouttime": xouttime,
//     "xstatus": xstatus,
//     "xnote": xnote,
//     "xdepartment": xdepartment,
//     "xdesignation": xdesignation,
//     "xconcern": xconcern,
//     "xdayname": xdayname,
//     "xemplate": xemplate,
//     "xstatuslate": xstatuslate,
//     "xempel": xempel,
//     "xstatusel": xstatusel,
//     "xworktime": xworktime,
//     "xsid": xsid,
//     "xsname": xsname,
//     "xshift": xshift,
//   };
// }
//
// class Xdate {
//   Xdate({
//     required this.date,
//     required this.timezoneType,
//     required this.timezone,
//   });
//
//   DateTime date;
//   int timezoneType;
//   String timezone;
//
//   factory Xdate.fromJson(Map<String, dynamic> json) => Xdate(
//     date: DateTime.parse(json["date"]),
//     timezoneType: json["timezone_type"],
//     timezone: json["timezone"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "date": date.toIso8601String(),
//     "timezone_type": timezoneType,
//     "timezone": timezone,
//   };
// }
//
//



// To parse this JSON data, do
//
//     final attendenceReportModel = attendenceReportModelFromJson(jsonString);

// import 'dart:convert';
//
// List<AttendenceReportModel> attendenceReportModelFromJson(String str) => List<AttendenceReportModel>.from(json.decode(str).map((x) => AttendenceReportModel.fromJson(x)));
//
// String attendenceReportModelToJson(List<AttendenceReportModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class AttendenceReportModel {
//   AttendenceReportModel({
//     required this.xdate,
//     required this.xintime,
//     required this.xouttime,
//     required this.xstatus,
//   });
//
//   Xdate xdate;
//   Xdate xintime;
//   Xdate xouttime;
//   String xstatus;
//
//   factory AttendenceReportModel.fromJson(Map<String, dynamic> json) => AttendenceReportModel(
//     xdate: Xdate.fromJson(json["xdate"]),
//     xintime: Xdate.fromJson(json["xintime"]),
//     xouttime: Xdate.fromJson(json["xouttime"]),
//     xstatus: json["xstatus"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "xdate": xdate.toJson(),
//     "xintime": xintime.toJson(),
//     "xouttime": xouttime.toJson(),
//     "xstatus": xstatus,
//   };
// }
//
// class Xdate {
//   Xdate({
//     required this.date,
//     required this.timezoneType,
//     required this.timezone,
//   });
//
//   DateTime date;
//   int timezoneType;
//   String timezone;
//
//   factory Xdate.fromJson(Map<String, dynamic> json) => Xdate(
//     date: DateTime.parse(json["date"]),
//     timezoneType: json["timezone_type"],
//     timezone: json["timezone"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "date": date.toIso8601String(),
//     "timezone_type": timezoneType,
//     "timezone": timezone,
//   };
// }




// To parse this JSON data, do
//
//     final attendenceReportModel = attendenceReportModelFromJson(jsonString);
//
// import 'dart:convert';
//
// List<AttendenceReportModel> attendenceReportModelFromJson(String str) => List<AttendenceReportModel>.from(json.decode(str).map((x) => AttendenceReportModel.fromJson(x)));
//
// String attendenceReportModelToJson(List<AttendenceReportModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class AttendenceReportModel {
//   AttendenceReportModel({
//     required this.zid,
//     required this.zorg,
//     required this.xmadd,
//     required this.xdate,
//     required this.xstaff,
//     required this.xposition,
//     required this.xname,
//     required this.xintime,
//     required this.xouttime,
//     required this.xstatus,
//     required this.xnote,
//     required this.xdepartment,
//     required this.xdesignation,
//     required this.xconcern,
//     required this.xdayname,
//     required this.xemplate,
//     required this.xstatuslate,
//     required this.xempel,
//     required this.xstatusel,
//     required this.xworktime,
//     required this.xsid,
//     required this.xsname,
//     required this.xshift,
//   });
//
//   int zid;
//   dynamic zorg;
//   String xmadd;
//   Xdate xdate;
//   dynamic xstaff;
//   dynamic xposition;
//   dynamic xname;
//   dynamic xintime;
//   dynamic xouttime;
//   String xstatus;
//   String xnote;
//   dynamic xdepartment;
//   dynamic xdesignation;
//   dynamic xconcern;
//   String xdayname;
//   dynamic xemplate;
//   String xstatuslate;
//   dynamic xempel;
//   String xstatusel;
//   dynamic xworktime;
//   dynamic xsid;
//   dynamic xsname;
//   dynamic xshift;
//
//   factory AttendenceReportModel.fromJson(Map<String, dynamic> json) => AttendenceReportModel(
//     zid: json["zid"],
//     zorg: json["zorg"],
//     xmadd: json["xmadd"],
//     xdate: Xdate.fromJson(json["xdate"]),
//     xstaff: json["xstaff"],
//     xposition: json["xposition"],
//     xname: json["xname"],
//     xintime: json["xintime"],
//     xouttime: json["xouttime"],
//     xstatus: json["xstatus"],
//     xnote: json["xnote"],
//     xdepartment: json["xdepartment"],
//     xdesignation: json["xdesignation"],
//     xconcern: json["xconcern"],
//     xdayname: json["xdayname"],
//     xemplate: json["xemplate"],
//     xstatuslate: json["xstatuslate"],
//     xempel: json["xempel"],
//     xstatusel: json["xstatusel"],
//     xworktime: json["xworktime"],
//     xsid: json["xsid"],
//     xsname: json["xsname"],
//     xshift: json["xshift"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "zid": zid,
//     "zorg": zorg,
//     "xmadd": xmadd,
//     "xdate": xdate.toJson(),
//     "xstaff": xstaff,
//     "xposition": xposition,
//     "xname": xname,
//     "xintime": xintime,
//     "xouttime": xouttime,
//     "xstatus": xstatus,
//     "xnote": xnote,
//     "xdepartment": xdepartment,
//     "xdesignation": xdesignation,
//     "xconcern": xconcern,
//     "xdayname": xdayname,
//     "xemplate": xemplate,
//     "xstatuslate": xstatuslate,
//     "xempel": xempel,
//     "xstatusel": xstatusel ,
//     "xworktime": xworktime,
//     "xsid": xsid,
//     "xsname": xsname,
//     "xshift": xshift,
//   };
// }
//
// class Xdate {
//   Xdate({
//     required this.date,
//     required this.timezoneType,
//    // required this.timezone,
//   });
//
//   DateTime date;
//   int timezoneType;
//   //Timezone timezone;
//
//   factory Xdate.fromJson(Map<String, dynamic> json) => Xdate(
//     date: DateTime.parse(json["date"]),
//     timezoneType: json["timezone_type"],
//     //timezone: timezoneValues.map[json["timezone"]],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "date": date.toIso8601String(),
//     "timezone_type": timezoneType,
//     //"timezone": timezoneValues.reverse[timezone],
//   };
// }



// To parse this JSON data, do
//
//     final attendenceReportModel = attendenceReportModelFromJson(jsonString);
//
// import 'dart:convert';
//
// List<AttendenceReportModel> attendenceReportModelFromJson(String str) => List<AttendenceReportModel>.from(json.decode(str).map((x) => AttendenceReportModel.fromJson(x)));
//
// String attendenceReportModelToJson(List<AttendenceReportModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class AttendenceReportModel {
//   AttendenceReportModel({
//     required this.xdate,
//     required this.xintime,
//     required this.xouttime,
//     required this.xstatus,
//     required this.xworktime
//
//   });
//
//   Xdate xdate;
//   dynamic xintime;
//   dynamic xouttime;
//   dynamic xstatus;
//   dynamic xworktime;
//
//   factory AttendenceReportModel.fromJson(Map<String, dynamic> json) => AttendenceReportModel(
//     xdate: Xdate.fromJson(json["xdate"]),
//     xintime: json["xintime"],
//     xouttime: json["xouttime"],
//     xstatus: json["xstatus"],
//     xworktime : json["xworktime"]
//   );
//
//   Map<String, dynamic> toJson() => {
//     "xdate": xdate.toJson(),
//     "xintime": xintime,
//     "xouttime": xouttime,
//     "xstatus": xstatus,
//     "xworktime": xworktime
//   };
// }
//
// class Xdate {
//   Xdate({
//     required this.date,
//     required this.timezoneType,
//     required this.timezone,
//   });
//
//   DateTime date;
//   int timezoneType;
//   String timezone;
//
//   factory Xdate.fromJson(Map<String, dynamic> json) => Xdate(
//     date: DateTime.parse(json["date"]),
//     timezoneType: json["timezone_type"],
//     timezone: json["timezone"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "date": date.toIso8601String(),
//     "timezone_type": timezoneType,
//     "timezone": timezone,
//   };
// }


// To parse this JSON data, do
//
//     final attendenceReportModel = attendenceReportModelFromJson(jsonString);
//
// import 'dart:convert';
//
// List<AttendenceReportModel> attendenceReportModelFromJson(String str) => List<AttendenceReportModel>.from(json.decode(str).map((x) => AttendenceReportModel.fromJson(x)));
//
// String attendenceReportModelToJson(List<AttendenceReportModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class AttendenceReportModel {
//   AttendenceReportModel({
//     required this.xdate,
//     required this.xintime,
//     required this.xouttime,
//     required this.xworktime,
//     required this.xstatus,
//   });
//
//   Xdate xdate;
//   Xdate xintime;
//   Xdate xouttime;
//   Xdate xworktime;
//   String xstatus;
//
//   factory AttendenceReportModel.fromJson(Map<String, dynamic> json) => AttendenceReportModel(
//     xdate: Xdate.fromJson(json["xdate"]),
//     xintime: Xdate.fromJson(json["xintime"]),
//     xouttime: Xdate.fromJson(json["xouttime"]),
//     xworktime: Xdate.fromJson(json["xworktime"]),
//     xstatus: json["xstatus"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "xdate": xdate.toJson(),
//     "xintime": xintime == null ? null : xintime.toJson(),
//     "xouttime": xouttime == null ? null : xouttime.toJson(),
//     "xworktime": xworktime == null ? null : xworktime.toJson(),
//     "xstatus": xstatus,
//   };
// }
//
// class Xdate {
//   Xdate({
//     required this.date,
//     required this.timezoneType,
//     required this.timezone,
//   });
//
//   DateTime date;
//   int timezoneType;
//   String timezone;
//
//   factory Xdate.fromJson(Map<String, dynamic> json) => Xdate(
//     date: DateTime.parse(json["date"]),
//     timezoneType: json["timezone_type"],
//     timezone: json["timezone"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "date": date.toIso8601String(),
//     "timezone_type": timezoneType,
//     "timezone": timezone,
//   };
// }


// To parse this JSON data, do
//
//     final attendenceReportModel = attendenceReportModelFromJson(jsonString);

import 'dart:convert';

List<AttendenceReportModel> attendenceReportModelFromJson(String str) => List<AttendenceReportModel>.from(json.decode(str).map((x) => AttendenceReportModel.fromJson(x)));

String attendenceReportModelToJson(List<AttendenceReportModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AttendenceReportModel {
  AttendenceReportModel({
    required this.xdate,
    required this.xintime,
    required this.xouttime,
    required this.xworktime,
    required this.xstatus,
  });

  String xdate;
  String xintime;
  String xouttime;
  String xworktime;
  String xstatus;

  factory AttendenceReportModel.fromJson(Map<String, dynamic> json) => AttendenceReportModel(
    xdate: json["xdate"],
    xintime: json["xintime"],
    xouttime: json["xouttime"],
    xworktime: json["xworktime"],
    xstatus: json["xstatus"],
  );

  Map<String, dynamic> toJson() => {
    "xdate": xdate,
    "xintime": xintime,
    "xouttime": xouttime,
    "xworktime": xworktime,
    "xstatus": xstatus,
  };
}
