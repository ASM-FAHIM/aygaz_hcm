// To parse this JSON data, do
//
//     final poAdminModel = poAdminModelFromJson(jsonString);

import 'dart:convert';

List<PoAdminModel> poAdminModelFromJson(String str) => List<PoAdminModel>.from(
    json.decode(str).map((x) => PoAdminModel.fromJson(x)));

String poAdminModelToJson(List<PoAdminModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PoAdminModel {
  PoAdminModel({
    required this.cusdesc,
    required this.org,
    required this.xprojectdesc,
    required this.preparer,
    required this.designation,
    required this.deptname,
    required this.signname,
    required this.signdesignation,
    required this.signdeptname,
    required this.ztime,
    required this.zutime,
    required this.zauserid,
    required this.zuuserid,
    required this.zid,
    required this.xpornum,
    required this.xmlcno,
    required this.xshipdate,
    required this.xlcissuedate,
    required this.xexpirydate,
    required this.xlcreceivedate,
    required this.xbeneficiary,
    required this.xopenbank,
    required this.xsellerbank,
    required this.xshipfrom,
    required this.xshipto,
    required this.xlcstatus,
    required this.xcur,
    required this.xshipterm,
    required this.xnotify,
    required this.xsup,
    required this.xagent,
    required this.xlcqty,
    required this.xprimetotamt,
    required this.xbasetotamt,
    required this.xpaymentterm,
    required this.xlccharges,
    required this.xrem,
    required this.xexch,
    required this.xtype,
    required this.xcomm,
    required this.xporeqnum,
    required this.xstatuspor,
    required this.xcommodity,
    required this.xportship,
    required this.xvessel,
    required this.xshipline,
    required this.xpackweightgross,
    required this.xpackweightnet,
    required this.xwh,
    required this.xpiref,
    required this.xorigin,
    required this.xinvnum,
    required this.xdate,
    required this.xpsicode,
    required this.xpsirfi,
    required this.xtypeobj,
    required this.xyear,
    required this.xper,
    required this.xstatusjv,
    required this.xdisc,
    required this.xdiscf,
    required this.xvatrate,
    required this.xvatamt,
    required this.xait,
    required this.xtotamt,
    required this.xsign,
    required this.xprime,
    required this.xlcno,
    required this.xadvicebank,
    required this.xbase,
    required this.xshipmode,
    required this.xind,
    required this.xpidate,
    required this.xref,
    required this.xqotnum,
    required this.xregi,
    required this.xstaff,
    required this.xordernum,
    required this.xcus,
    required this.xcpo,
    required this.xstatus,
    required this.xtwh,
    required this.xtransport,
    required this.xdatecpo,
    required this.xtornum,
    required this.xnote,
    required this.xcurbuyer,
    required this.xexchbuyer,
    required this.xpreparer,
    required this.xsignatory1,
    required this.xsigndate1,
    required this.xsignatory2,
    required this.xsigndate2,
    required this.xsignatory3,
    required this.xsigndate3,
    required this.xsignatory4,
    required this.xsigndate4,
    required this.xsignatory5,
    required this.xsigndate5,
    required this.xsignatory6,
    required this.xsigndate6,
    required this.xsignatory7,
    required this.xsigndate7,
    required this.xidsup,
    required this.xsuperior2,
    required this.xsuperior3,
    required this.xsignreject,
    required this.xdatereject,
    required this.xnote1,
    required this.xbasetransport,
    required this.xstatuspaf,
    required this.xdeliloc,
    required this.xrptcount,
    required this.xproject,
    required this.xporef,
    required this.xemname,
    required this.xcontactphn,
    required this.xempunit,
    required this.xbackground,
    required this.xcode,
    required this.xstatusvat,
    required this.xoverpurchase,
    required this.xbainaamt,
    required this.xnote2,
    required this.xnote3,
  });

  dynamic cusdesc;
  dynamic org;
  dynamic xprojectdesc;
  dynamic preparer;
  dynamic designation;
  dynamic deptname;
  dynamic signname;
  dynamic signdesignation;
  dynamic signdeptname;
  Xdate ztime;
  Xdate zutime;
  dynamic zauserid;
  dynamic zuuserid;
  int zid;
  dynamic xpornum;
  dynamic xmlcno;
  Xdate xshipdate;
  dynamic xlcissuedate;
  dynamic xexpirydate;
  dynamic xlcreceivedate;
  dynamic xbeneficiary;
  dynamic xopenbank;
  dynamic xsellerbank;
  dynamic xshipfrom;
  dynamic xshipto;
  dynamic xlcstatus;
  dynamic xcur;
  dynamic xshipterm;
  dynamic xnotify;
  dynamic xsup;
  dynamic xagent;
  dynamic xlcqty;
  dynamic xprimetotamt;
  dynamic xbasetotamt;
  dynamic xpaymentterm;
  dynamic xlccharges;
  dynamic xrem;
  dynamic xexch;
  dynamic xtype;
  dynamic xcomm;
  dynamic xporeqnum;
  dynamic xstatuspor;
  dynamic xcommodity;
  dynamic xportship;
  dynamic xvessel;
  dynamic xshipline;
  dynamic xpackweightgross;
  dynamic xpackweightnet;
  dynamic xwh;
  dynamic xpiref;
  dynamic xorigin;
  dynamic xinvnum;
  Xdate xdate;
  dynamic xpsicode;
  dynamic xpsirfi;
  dynamic xtypeobj;
  int xyear;
  int xper;
  dynamic xstatusjv;
  dynamic xdisc;
  dynamic xdiscf;
  dynamic xvatrate;
  dynamic xvatamt;
  dynamic xait;
  dynamic xtotamt;
  int xsign;
  dynamic xprime;
  dynamic xlcno;
  dynamic xadvicebank;
  dynamic xbase;
  dynamic xshipmode;
  dynamic xind;
  Xdate xpidate;
  dynamic xref;
  dynamic xqotnum;
  dynamic xregi;
  dynamic xstaff;
  dynamic xordernum;
  dynamic xcus;
  dynamic xcpo;
  dynamic xstatus;
  dynamic xtwh;
  dynamic xtransport;
  dynamic xdatecpo;
  dynamic xtornum;
  dynamic xnote;
  dynamic xcurbuyer;
  dynamic xexchbuyer;
  dynamic xpreparer;
  dynamic xsignatory1;
  dynamic xsigndate1;
  dynamic xsignatory2;
  dynamic xsigndate2;
  dynamic xsignatory3;
  dynamic xsigndate3;
  dynamic xsignatory4;
  dynamic xsigndate4;
  dynamic xsignatory5;
  dynamic xsigndate5;
  dynamic xsignatory6;
  dynamic xsigndate6;
  dynamic xsignatory7;
  dynamic xsigndate7;
  dynamic xidsup;
  dynamic xsuperior2;
  dynamic xsuperior3;
  dynamic xsignreject;
  Xdate xdatereject;
  dynamic xnote1;
  dynamic xbasetransport;
  dynamic xstatuspaf;
  dynamic xdeliloc;
  dynamic xrptcount;
  dynamic xproject;
  dynamic xporef;
  dynamic xemname;
  dynamic xcontactphn;
  dynamic xempunit;
  dynamic xbackground;
  dynamic xcode;
  dynamic xstatusvat;
  dynamic xoverpurchase;
  dynamic xbainaamt;
  dynamic xnote2;
  dynamic xnote3;

  factory PoAdminModel.fromJson(Map<String, dynamic> json) => PoAdminModel(
        cusdesc: json["cusdesc"],
        org: json["org"],
        xprojectdesc: json["xprojectdesc"],
        preparer: json["preparer"],
        designation: json["designation"],
        deptname: json["deptname"],
        signname: json["signname"],
        signdesignation: json["signdesignation"],
        signdeptname: json["signdeptname"],
        ztime: Xdate.fromJson(json["ztime"]),
        zutime: Xdate.fromJson(json["zutime"]),
        zauserid: json["zauserid"],
        zuuserid: json["zuuserid"],
        zid: json["zid"],
        xpornum: json["xpornum"],
        xmlcno: json["xmlcno"],
        xshipdate: Xdate.fromJson(json["xshipdate"]),
        xlcissuedate: json["xlcissuedate"],
        xexpirydate: json["xexpirydate"],
        xlcreceivedate: json["xlcreceivedate"],
        xbeneficiary: json["xbeneficiary"],
        xopenbank: json["xopenbank"],
        xsellerbank: json["xsellerbank"],
        xshipfrom: json["xshipfrom"],
        xshipto: json["xshipto"],
        xlcstatus: json["xlcstatus"],
        xcur: json["xcur"],
        xshipterm: json["xshipterm"],
        xnotify: json["xnotify"],
        xsup: json["xsup"],
        xagent: json["xagent"],
        xlcqty: json["xlcqty"],
        xprimetotamt: json["xprimetotamt"],
        xbasetotamt: json["xbasetotamt"],
        xpaymentterm: json["xpaymentterm"],
        xlccharges: json["xlccharges"],
        xrem: json["xrem"],
        xexch: json["xexch"],
        xtype: json["xtype"],
        xcomm: json["xcomm"],
        xporeqnum: json["xporeqnum"],
        xstatuspor: json["xstatuspor"],
        xcommodity: json["xcommodity"],
        xportship: json["xportship"],
        xvessel: json["xvessel"],
        xshipline: json["xshipline"],
        xpackweightgross: json["xpackweightgross"],
        xpackweightnet: json["xpackweightnet"],
        xwh: json["xwh"],
        xpiref: json["xpiref"],
        xorigin: json["xorigin"],
        xinvnum: json["xinvnum"],
        xdate: Xdate.fromJson(json["xdate"]),
        xpsicode: json["xpsicode"],
        xpsirfi: json["xpsirfi"],
        xtypeobj: json["xtypeobj"],
        xyear: json["xyear"],
        xper: json["xper"],
        xstatusjv: json["xstatusjv"],
        xdisc: json["xdisc"],
        xdiscf: json["xdiscf"],
        xvatrate: json["xvatrate"],
        xvatamt: json["xvatamt"],
        xait: json["xait"],
        xtotamt: json["xtotamt"],
        xsign: json["xsign"],
        xprime: json["xprime"],
        xlcno: json["xlcno"],
        xadvicebank: json["xadvicebank"],
        xbase: json["xbase"],
        xshipmode: json["xshipmode"],
        xind: json["xind"],
        xpidate: Xdate.fromJson(json["xpidate"]),
        xref: json["xref"],
        xqotnum: json["xqotnum"],
        xregi: json["xregi"],
        xstaff: json["xstaff"],
        xordernum: json["xordernum"],
        xcus: json["xcus"],
        xcpo: json["xcpo"],
        xstatus: json["xstatus"],
        xtwh: json["xtwh"],
        xtransport: json["xtransport"],
        xdatecpo: json["xdatecpo"],
        xtornum: json["xtornum"],
        xnote: json["xnote"],
        xcurbuyer: json["xcurbuyer"],
        xexchbuyer: json["xexchbuyer"],
        xpreparer: json["xpreparer"],
        xsignatory1: json["xsignatory1"],
        xsigndate1: json["xsigndate1"],
        xsignatory2: json["xsignatory2"],
        xsigndate2: json["xsigndate2"],
        xsignatory3: json["xsignatory3"],
        xsigndate3: json["xsigndate3"],
        xsignatory4: json["xsignatory4"],
        xsigndate4: json["xsigndate4"],
        xsignatory5: json["xsignatory5"],
        xsigndate5: json["xsigndate5"],
        xsignatory6: json["xsignatory6"],
        xsigndate6: json["xsigndate6"],
        xsignatory7: json["xsignatory7"],
        xsigndate7: json["xsigndate7"],
        xidsup: json["xidsup"],
        xsuperior2: json["xsuperior2"],
        xsuperior3: json["xsuperior3"],
        xsignreject: json["xsignreject"],
        xdatereject: Xdate.fromJson(json["xdatereject"]),
        xnote1: json["xnote1"],
        xbasetransport: json["xbasetransport"],
        xstatuspaf: json["xstatuspaf"],
        xdeliloc: json["xdeliloc"],
        xrptcount: json["xrptcount"],
        xproject: json["xproject"],
        xporef: json["xporef"],
        xemname: json["xemname"],
        xcontactphn: json["xcontactphn"],
        xempunit: json["xempunit"],
        xbackground: json["xbackground"],
        xcode: json["xcode"],
        xstatusvat: json["xstatusvat"],
        xoverpurchase: json["xoverpurchase"],
        xbainaamt: json["xbainaamt"],
        xnote2: json["xnote2"],
        xnote3: json["xnote3"],
      );

  Map<String, dynamic> toJson() => {
        "cusdesc": cusdesc,
        "org": org,
        "xprojectdesc": xprojectdesc,
        "preparer": preparer,
        "designation": designation,
        "deptname": deptname,
        "signname": signname,
        "signdesignation": signdesignation,
        "signdeptname": signdeptname,
        "ztime": ztime.toJson(),
        "zutime": zutime.toJson(),
        "zauserid": zauserid,
        "zuuserid": zuuserid,
        "zid": zid,
        "xpornum": xpornum,
        "xmlcno": xmlcno,
        "xshipdate": xshipdate.toJson(),
        "xlcissuedate": xlcissuedate,
        "xexpirydate": xexpirydate,
        "xlcreceivedate": xlcreceivedate,
        "xbeneficiary": xbeneficiary,
        "xopenbank": xopenbank,
        "xsellerbank": xsellerbank,
        "xshipfrom": xshipfrom,
        "xshipto": xshipto,
        "xlcstatus": xlcstatus,
        "xcur": xcur,
        "xshipterm": xshipterm,
        "xnotify": xnotify,
        "xsup": xsup,
        "xagent": xagent,
        "xlcqty": xlcqty,
        "xprimetotamt": xprimetotamt,
        "xbasetotamt": xbasetotamt,
        "xpaymentterm": xpaymentterm,
        "xlccharges": xlccharges,
        "xrem": xrem,
        "xexch": xexch,
        "xtype": xtype,
        "xcomm": xcomm,
        "xporeqnum": xporeqnum,
        "xstatuspor": xstatuspor,
        "xcommodity": xcommodity,
        "xportship": xportship,
        "xvessel": xvessel,
        "xshipline": xshipline,
        "xpackweightgross": xpackweightgross,
        "xpackweightnet": xpackweightnet,
        "xwh": xwh,
        "xpiref": xpiref,
        "xorigin": xorigin,
        "xinvnum": xinvnum,
        "xdate": xdate.toJson(),
        "xpsicode": xpsicode,
        "xpsirfi": xpsirfi,
        "xtypeobj": xtypeobj,
        "xyear": xyear,
        "xper": xper,
        "xstatusjv": xstatusjv,
        "xdisc": xdisc,
        "xdiscf": xdiscf,
        "xvatrate": xvatrate,
        "xvatamt": xvatamt,
        "xait": xait,
        "xtotamt": xtotamt,
        "xsign": xsign,
        "xprime": xprime,
        "xlcno": xlcno,
        "xadvicebank": xadvicebank,
        "xbase": xbase,
        "xshipmode": xshipmode,
        "xind": xind,
        "xpidate": xpidate.toJson(),
        "xref": xref,
        "xqotnum": xqotnum,
        "xregi": xregi,
        "xstaff": xstaff,
        "xordernum": xordernum,
        "xcus": xcus,
        "xcpo": xcpo,
        "xstatus": xstatus,
        "xtwh": xtwh,
        "xtransport": xtransport,
        "xdatecpo": xdatecpo,
        "xtornum": xtornum,
        "xnote": xnote,
        "xcurbuyer": xcurbuyer,
        "xexchbuyer": xexchbuyer,
        "xpreparer": xpreparer,
        "xsignatory1": xsignatory1,
        "xsigndate1": xsigndate1,
        "xsignatory2": xsignatory2,
        "xsigndate2": xsigndate2,
        "xsignatory3": xsignatory3,
        "xsigndate3": xsigndate3,
        "xsignatory4": xsignatory4,
        "xsigndate4": xsigndate4,
        "xsignatory5": xsignatory5,
        "xsigndate5": xsigndate5,
        "xsignatory6": xsignatory6,
        "xsigndate6": xsigndate6,
        "xsignatory7": xsignatory7,
        "xsigndate7": xsigndate7,
        "xidsup": xidsup,
        "xsuperior2": xsuperior2,
        "xsuperior3": xsuperior3,
        "xsignreject": xsignreject,
        "xdatereject": xdatereject.toJson(),
        "xnote1": xnote1,
        "xbasetransport": xbasetransport,
        "xstatuspaf": xstatuspaf,
        "xdeliloc": xdeliloc,
        "xrptcount": xrptcount,
        "xproject": xproject,
        "xporef": xporef,
        "xemname": xemname,
        "xcontactphn": xcontactphn,
        "xempunit": xempunit,
        "xbackground": xbackground,
        "xcode": xcode,
        "xstatusvat": xstatusvat,
        "xoverpurchase": xoverpurchase,
        "xbainaamt": xbainaamt,
        "xnote2": xnote2,
        "xnote3": xnote3,
      };
}

class Xdate {
  Xdate({
    required this.date,
    required this.timezoneType,
    required this.timezone,
  });

  DateTime date;
  int timezoneType;
  String timezone;

  factory Xdate.fromJson(Map<String, dynamic> json) => Xdate(
        date: DateTime.parse(json["date"]),
        timezoneType: json["timezone_type"],
        timezone: json["timezone"],
      );

  Map<String, dynamic> toJson() => {
        "date": date.toIso8601String(),
        "timezone_type": timezoneType,
        "timezone": timezone,
      };
}
