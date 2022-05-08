import 'dart:convert';

import 'package:aygazhcm/hr/notifications/absent_information.dart';
import 'package:aygazhcm/hr/notifications/early_leave_information.dart';
import 'package:aygazhcm/hr/notifications/late_info_notification.dart';
import 'package:aygazhcm/hr/notifications/leave&tour_notification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:aygazhcm/hr/viewNotification.dart';
import 'package:http/http.dart' as http;

import '../../../../data_model/notificaiton_count/admin_count.dart';
import 'approver_notification.dart';

class AdminNotification extends StatefulWidget {
  //const NotificationList({Key? key}) : super(key: key);

  AdminNotification(
      {required this.xposition,
      required this.xstaff,
      required this.zemail,
      required this.zid});
  String xposition;
  String xstaff;
  String zemail;
  String zid;

  @override
  _AdminNotificationState createState() => _AdminNotificationState();
}

class _AdminNotificationState extends State<AdminNotification> {
  // fetchnotification _noteList = fetchnotification();
  //fetchnotification _noteList = fetchnotification();

  @override
  // Future<List<NotificationModel>>? futurePost;
  //
  // Future<List<NotificationModel>> fetchPost() async {
  //   var response = await http.post(
  //       Uri.parse('http://172.20.20.69/monyeem/notification.php'),
  //       body: jsonEncode(<String, String>{
  //         "xposition": widget.xposition,
  //       }));
  //
  //   if (response.statusCode == 200) {
  //     final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
  //
  //     return parsed
  //         .map<NotificationModel>((json) => NotificationModel.fromJson(json))
  //         .toList();
  //   } else {
  //     throw Exception('Failed to load album');
  //   }
  // }

  String earlyCount = "0";
  late AdminEarlyCount earlyCount1;

  String lateCount = "0";
  late AdminLateCount lateCount1;

  String leaveCount = "0";
  late AdminleaveCount leaveCount1;

  String absentCount = "0";
  late AdminAbsentCount absentCount1;

  String POCount = "0";
  late AdminPoCount POCount1;

  String SRCount = "0";
  late AdminSrCount SRCount1;

  String CSCount = "0";
  late AdminCsCount CSCount1;

  String LACount = "0";
  late AdminLaCount LACount1;

  String LFACount = "0";
  late AdminLfaCount LFACount1;

  bool isLoading = false;

  Future<String> getAdminNotificaitonCount() async {
    http.Response responseearly = await http.post(
        Uri.parse('http://172.20.20.69/api/smallapi/admin/totalearly.php'),
        body: jsonEncode(<String, String>{"xposition": widget.xposition}));

    http: //172.20.20.69/api/smallapi/admin/totalpo.php

    earlyCount1 = adminEarlyCountFromJson(responseearly.body);
    earlyCount = earlyCount1.total.toString();

    print("Admin Early" + responseearly.body);

    http.Response responselate = await http.post(
        Uri.parse('http://172.20.20.69/api/smallapi/admin/totallate.php'),
        body: jsonEncode(<String, String>{"xposition": widget.xposition}));

    lateCount1 = adminLateCountFromJson(responselate.body);
    lateCount = lateCount1.total.toString();

    print("Admin late" + responselate.body);

    http.Response responseleave = await http.post(
        Uri.parse(
            'http://172.20.20.69/api/smallapi/admin/totalleaveandtour.php'),
        body: jsonEncode(<String, String>{"xposition": widget.xposition}));

    leaveCount1 = adminleaveCountFromJson(responseleave.body);
    leaveCount = leaveCount1.total.toString();

    print("Admin Leave" + responseleave.body);

    http.Response responseabsent = await http.post(
        Uri.parse('http://172.20.20.69/api/smallapi/admin/totalabsent.php'),
        body: jsonEncode(<String, String>{"xposition": widget.xposition}));

    absentCount1 = adminAbsentCountFromJson(responseabsent.body);
    absentCount = absentCount1.total.toString();

    print("Admin Absent" + responseabsent.body);

    http.Response responsePO = await http.post(
        Uri.parse('http://172.20.20.69/api/smallapi/admin/totalpo.php'),
        body: jsonEncode(<String, String>{
          "xposition": widget.xposition,
          "zid": widget.zid
        }));

    POCount1 = adminPoCountFromJson(responsePO.body);
    POCount = POCount1.total.toString();

    print("Admin PO" + responsePO.body);

    http.Response responseSR = await http.post(
        Uri.parse('http://172.20.20.69/api/smallapi/admin/totalsr.php'),
        body: jsonEncode(<String, String>{
          "xposition": widget.xposition,
          "zid": widget.zid
        }));

    SRCount1 = adminSrCountFromJson(responseSR.body);
    SRCount = SRCount1.total.toString();

    print("Admin SR" + responseSR.body);

    http.Response responseCS = await http.post(
        Uri.parse('http://172.20.20.69/api/smallapi/admin/totalcs.php'),
        body: jsonEncode(<String, String>{
          "xposition": widget.xposition,
          "zid": widget.zid
        }));

    CSCount1 = adminCsCountFromJson(responseCS.body);
    CSCount = CSCount1.total.toString();

    print("Admin CS" + responseCS.body);

    http.Response responseLA = await http.post(
        Uri.parse(
            'http://172.20.20.69/api/smallapi/admin/count_legalactive.php'),
        body: jsonEncode(<String, String>{
          "xposition": widget.xposition,
          "zid": widget.zid
        }));

    LACount1 = adminLaCountFromJson(responseLA.body);
    LACount = LACount1.total.toString();

    print("Admin LA" + responseLA.body);

    http.Response responseLFA = await http.post(
        Uri.parse(
            'http://172.20.20.69/api/smallapi/admin/count_legaladjust.php'),
        body: jsonEncode(<String, String>{
          "xposition": widget.xposition,
          "zid": widget.zid
        }));

    LFACount1 = adminLfaCountFromJson(responseLFA.body);
    LFACount = LFACount1.total.toString();

    print("Admin LFA" + responseLFA.body);

    return '';
  }

  @override
  void initState() {
    super.initState();

    getAdminNotificaitonCount();

    print(widget.zid);
    // submitData();
    // futurePost = fetchPost();
    //
    // fetchPost().whenComplete(() => futurePost);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Color(0xff064A76),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Center(
            child: Text(
              "Approver Notifications",
              style: GoogleFonts.bakbakOne(
                fontSize: 20,
                color: Color(0xff074974),
              ),
            ),
          ),
          actions: [
            SizedBox(
              width: 20,
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              if (widget.zid == "100060") ...[
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 8,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      onPressed: () {
                        setState(() {
                          isLoading = true;
                        });

                        Future.delayed(Duration(seconds: 1), () {
                          setState(() {
                            isLoading = false;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminNotificationList(
                                        xposition: widget.xposition,
                                        xstaff: widget.xstaff,
                                        zemail: widget.zemail,
                                        zid: widget.zid,
                                        adminabsent: absentCount,
                                        adminearly: earlyCount,
                                        adminlate: lateCount,
                                        adminPO: POCount,
                                        adminSR: SRCount,
                                        adminCS: CSCount,
                                        adminLeave: leaveCount,
                                        adminLA: LACount,
                                        adminLFA: LFACount,
                                      )));
                        });

                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>ApproverCategory()));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          isLoading
                              ? SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: CircularProgressIndicator(
                                    color: Color(0xff064A76),
                                  ),
                                )
                              : Text(
                                  "Approver Notification",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.bakbakOne(
                                    fontSize: 18,
                                    color: Color(0xff064A76),
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.width / 8,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Late_NotificationList(
                                          xposition: widget.xposition,
                                          xstaff: widget.xstaff,
                                        )));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Late Information Details",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.bakbakOne(
                                  fontSize: 18,
                                  color: Color(0xff064A76),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.width / 8,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LeaveTour_NotificationList(
                                            xposition: widget.xposition)));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Leave&Tour Information Details",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.bakbakOne(
                                    fontSize: 18,
                                    color: Color(0xff064A76),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.width / 8,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          onPressed: () {
                            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            //   content: Text("Working on progress",
                            //     textAlign: TextAlign.center,
                            //     style: TextStyle(
                            //       fontSize: 20,
                            //     ),
                            //   ),
                            // ));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Early_Leave_NotificationList(
                                          xposition: widget.xposition,
                                          xstaff: widget.xstaff,
                                        )));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Early Leave Information Details",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.bakbakOne(
                                  fontSize: 18,
                                  color: Color(0xff064A76),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.width / 8,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Absent_NotificationList(
                                            xposition: widget.xposition)));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Absent Information Details",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.bakbakOne(
                                  fontSize: 18,
                                  color: Color(0xff064A76),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ] else ...[
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 10,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      onPressed: () {
                        setState(() {
                          isLoading = true;
                        });

                        Future.delayed(Duration(seconds: 1), () {
                          setState(() {
                            isLoading = false;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminNotificationList(
                                        xposition: widget.xposition,
                                        xstaff: widget.xstaff,
                                        zemail: widget.zemail,
                                        zid: widget.zid,
                                        adminabsent: absentCount,
                                        adminearly: earlyCount,
                                        adminlate: lateCount,
                                        adminPO: POCount,
                                        adminSR: SRCount,
                                        adminCS: CSCount,
                                        adminLeave: leaveCount,
                                        adminLA: LACount,
                                        adminLFA: LFACount,
                                      )));
                        });

                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>ApproverCategory()));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          isLoading
                              ? SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: CircularProgressIndicator(
                                    color: Color(0xff064A76),
                                  ),
                                )
                              : Text(
                                  "Approver Notification",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.bakbakOne(
                                    fontSize: 18,
                                    color: Color(0xff064A76),
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]
            ],
          ),
        ));
  }
}
