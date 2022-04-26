// To parse this JSON data, do
//
//     final adminLateCount = adminLateCountFromJson(jsonString);

import 'dart:convert';

AdminLateCount adminLateCountFromJson(String str) => AdminLateCount.fromJson(json.decode(str));

String adminLateCountToJson(AdminLateCount data) => json.encode(data.toJson());

class AdminLateCount {
  AdminLateCount({
    required this.total,
  });

  int total;

  factory AdminLateCount.fromJson(Map<String, dynamic> json) => AdminLateCount(
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
  };
}



AdminEarlyCount adminEarlyCountFromJson(String str) => AdminEarlyCount.fromJson(json.decode(str));

String adminEarlyCountToJson(AdminEarlyCount data) => json.encode(data.toJson());

class AdminEarlyCount {
  AdminEarlyCount({
    required this.total,
  });

  int total;

  factory AdminEarlyCount.fromJson(Map<String, dynamic> json) => AdminEarlyCount(
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
  };
}




AdminAbsentCount adminAbsentCountFromJson(String str) => AdminAbsentCount.fromJson(json.decode(str));

String adminAbsentCountToJson(AdminAbsentCount data) => json.encode(data.toJson());

class AdminAbsentCount {
  AdminAbsentCount({
    required this.total,
  });

  int total;

  factory AdminAbsentCount.fromJson(Map<String, dynamic> json) => AdminAbsentCount(
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
  };
}




AdminPoCount adminPoCountFromJson(String str) => AdminPoCount.fromJson(json.decode(str));

String adminPoCountToJson(AdminPoCount data) => json.encode(data.toJson());

class AdminPoCount {
  AdminPoCount({
    required this.total,
  });

  int total;

  factory AdminPoCount.fromJson(Map<String, dynamic> json) => AdminPoCount(
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
  };
}






AdminSrCount adminSrCountFromJson(String str) => AdminSrCount.fromJson(json.decode(str));

String adminSrCountToJson(AdminSrCount data) => json.encode(data.toJson());

class AdminSrCount {
  AdminSrCount({
    required this.total,
  });

  int total;

  factory AdminSrCount.fromJson(Map<String, dynamic> json) => AdminSrCount(
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
  };
}




AdminCsCount adminCsCountFromJson(String str) => AdminCsCount.fromJson(json.decode(str));

String adminCsCountToJson(AdminCsCount data) => json.encode(data.toJson());

class AdminCsCount {
  AdminCsCount({
    required this.total,
  });

  int total;

  factory AdminCsCount.fromJson(Map<String, dynamic> json) => AdminCsCount(
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
  };
}




AdminleaveCount adminleaveCountFromJson(String str) => AdminleaveCount.fromJson(json.decode(str));

String adminleaveCountToJson(AdminleaveCount data) => json.encode(data.toJson());

class AdminleaveCount {
  AdminleaveCount({
    required this.total,
  });

  int total;

  factory AdminleaveCount.fromJson(Map<String, dynamic> json) => AdminleaveCount(
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
  };
}



AdminLaCount adminLaCountFromJson(String str) => AdminLaCount.fromJson(json.decode(str));

String adminLaCountToJson(AdminLaCount data) => json.encode(data.toJson());

class AdminLaCount {
  AdminLaCount({
    required this.total,
  });

  int total;

  factory AdminLaCount.fromJson(Map<String, dynamic> json) => AdminLaCount(
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
  };
}




AdminLfaCount adminLfaCountFromJson(String str) => AdminLfaCount.fromJson(json.decode(str));

String adminLfaCountToJson(AdminLfaCount data) => json.encode(data.toJson());

class AdminLfaCount {
  AdminLfaCount({
    required this.total,
  });

  int total;

  factory AdminLfaCount.fromJson(Map<String, dynamic> json) => AdminLfaCount(
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
  };
}

