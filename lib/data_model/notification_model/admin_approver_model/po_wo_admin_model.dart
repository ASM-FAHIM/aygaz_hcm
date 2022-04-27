import 'dart:convert';

List<PoModel> poModelFromJson(String str) =>
    List<PoModel>.from(json.decode(str).map((x) => PoModel.fromJson(x)));

String poModelToJson(List<PoModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PoModel {
  PoModel({
    required this.pornum,
    required this.xdate,
    required this.cusdesc,
    required this.povalue,
    required this.xcus,
    required this.org,
    required this.xtype,
    required this.xstatuspor,
    required this.xproject,
    required this.xprojectdesc,
    required this.xporeqnum,
    required this.xstatus,
    required this.xrem,
    required this.xtypeobj,
    required this.xnote1,
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
    required this.xexch,
    required this.xcomm,
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
    required this.xpsicode,
    required this.xpsirfi,
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
    required this.xcpo,
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
    required this.xbasetransport,
    required this.xstatuspaf,
    required this.xdeliloc,
    required this.xrptcount,
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

  dynamic pornum;
  Xdate xdate;
  dynamic cusdesc;
  dynamic povalue;
  dynamic xcus;
  dynamic org;
  dynamic xtype;
  dynamic xstatuspor;
  dynamic xproject;
  dynamic xprojectdesc;
  dynamic xporeqnum;
  dynamic xstatus;
  dynamic xrem;
  dynamic xtypeobj;
  dynamic xnote1;
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
  dynamic xexch;
  dynamic xcomm;
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
  dynamic xpsicode;
  dynamic xpsirfi;
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
  dynamic xcpo;
  dynamic xtwh;
  dynamic xtransport;
  dynamic xdatecpo;
  dynamic xtornum;
  dynamic xnote;
  dynamic xcurbuyer;
  dynamic xexchbuyer;
  dynamic xpreparer;
  dynamic xsignatory1;
  Xdate xsigndate1;
  dynamic xsignatory2;
  Xdate xsigndate2;
  dynamic xsignatory3;
  Xdate xsigndate3;
  dynamic xsignatory4;
  Xdate xsigndate4;
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
  dynamic xdatereject;
  dynamic xbasetransport;
  dynamic xstatuspaf;
  dynamic xdeliloc;
  dynamic xrptcount;
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

  factory PoModel.fromJson(Map<String, dynamic> json) => PoModel(
        pornum: json["pornum"],
        xdate: Xdate.fromJson(json["xdate"]),
        cusdesc: json["cusdesc"],
        povalue: json["povalue"],
        xcus: json["xcus"],
        org: json["org"],
        xtype: json["xtype"],
        xstatuspor: json["xstatuspor"],
        xproject: json["xproject"],
        xprojectdesc: json["xprojectdesc"],
        xporeqnum: json["xporeqnum"],
        xstatus: json["xstatus"],
        xrem: json["xrem"],
        xtypeobj: json["xtypeobj"],
        xnote1: json["xnote1"],
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
        xexch: json["xexch"],
        xcomm: json["xcomm"],
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
        xpsicode: json["xpsicode"],
        xpsirfi: json["xpsirfi"],
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
        xcpo: json["xcpo"],
        xtwh: json["xtwh"],
        xtransport: json["xtransport"],
        xdatecpo: json["xdatecpo"],
        xtornum: json["xtornum"],
        xnote: json["xnote"],
        xcurbuyer: json["xcurbuyer"],
        xexchbuyer: json["xexchbuyer"],
        xpreparer: json["xpreparer"],
        xsignatory1: json["xsignatory1"],
        xsigndate1: Xdate.fromJson(json["xsigndate1"]),
        xsignatory2: json["xsignatory2"],
        xsigndate2: Xdate.fromJson(json["xsigndate2"]),
        xsignatory3: json["xsignatory3"],
        xsigndate3: Xdate.fromJson(json["xsigndate3"]),
        xsignatory4: json["xsignatory4"],
        xsigndate4: Xdate.fromJson(json["xsigndate4"]),
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
        xdatereject: json["xdatereject"],
        xbasetransport: json["xbasetransport"],
        xstatuspaf: json["xstatuspaf"],
        xdeliloc: json["xdeliloc"],
        xrptcount: json["xrptcount"],
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
        "pornum": pornum,
        "xdate": xdate.toJson(),
        "cusdesc": cusdesc,
        "povalue": povalue,
        "xcus": xcus,
        "org": org,
        "xtype": xtype,
        "xstatuspor": xstatuspor,
        "xproject": xproject,
        "xprojectdesc": xprojectdesc,
        "xporeqnum": xporeqnum,
        "xstatus": xstatus,
        "xrem": xrem,
        "xtypeobj": xtypeobj,
        "xnote1": xnote1,
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
        "xexch": xexch,
        "xcomm": xcomm,
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
        "xpsicode": xpsicode,
        "xpsirfi": xpsirfi,
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
        "xcpo": xcpo,
        "xtwh": xtwh,
        "xtransport": xtransport,
        "xdatecpo": xdatecpo,
        "xtornum": xtornum,
        "xnote": xnote,
        "xcurbuyer": xcurbuyer,
        "xexchbuyer": xexchbuyer,
        "xpreparer": xpreparer,
        "xsignatory1": xsignatory1,
        "xsigndate1": xsigndate1.toJson(),
        "xsignatory2": xsignatory2,
        "xsigndate2": xsigndate2.toJson(),
        "xsignatory3": xsignatory3,
        "xsigndate3": xsigndate3.toJson(),
        "xsignatory4": xsignatory4,
        "xsigndate4": xsigndate4.toJson(),
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
        "xdatereject": xdatereject,
        "xbasetransport": xbasetransport,
        "xstatuspaf": xstatuspaf,
        "xdeliloc": xdeliloc,
        "xrptcount": xrptcount,
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