import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aygazhcm/data_model/notification_model.dart';
import 'package:aygazhcm/home_page.dart';
import 'package:aygazhcm/hr/notifications/absent_information.dart';
import 'package:aygazhcm/hr/notifications/early_leave_information.dart';
import 'package:aygazhcm/hr/notifications/late_info_notification.dart';
import 'package:aygazhcm/hr/notifications/leave&tour_notification.dart';
import 'package:aygazhcm/hr/viewNotification.dart';
import 'package:aygazhcm/screen/notification_api.dart';
//import 'package:aygazhcm/hr/viewNotification.dart';
import 'package:http/http.dart' as http;
import 'package:badges/badges.dart';

import 'notifications/approverNotification/screen/approver_notification.dart';

class NotificationList extends StatefulWidget {
  //const NotificationList({Key? key}) : super(key: key);

  NotificationList({required this.xposition, required this.xstaff, required this.zid, required this.earlyCount, required this.leaveCount, required this.lateCount, required this.absentCount});
  String xposition;
  String xstaff;
  String zid;
  String earlyCount;
  String leaveCount;
  String lateCount;
  String absentCount;

  @override
  _NotificationListState createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
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

  @override
  void initState() {
    super.initState();

    print(widget.zid);
    // submitData();
    // futurePost = fetchPost();
    //
    // fetchPost().whenComplete(() => futurePost);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:  IconButton(
            icon: Icon(Icons.arrow_back),
            color: Color(0xff064A76),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Center(
            child: Text(
              "Notifications",
              style: GoogleFonts.bakbakOne(
                fontSize: 20,
                color: Color(0xff074974),
              ),
            ),
          ),
          actions: [
            SizedBox(width: 20,)
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              if(widget.zid == "100060")...[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Late_NotificationList(xposition: widget.xposition,xstaff: widget.xstaff,)));
                      },
                      child: Badge(
                        showBadge: int.parse(widget.lateCount) ==0? false : true,
                        padding: EdgeInsets.only(left: 5,top: 5,bottom: 5,right: 5),
                        badgeContent: Text(widget.lateCount,
                          style: GoogleFonts.bakbakOne(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        badgeColor: Color(0xff064A76),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LeaveTour_NotificationList(xposition: widget.xposition)));
                      },
                      child: Badge(
                        showBadge: int.parse(widget.leaveCount) ==0? false : true,
                        padding: EdgeInsets.only(left: 5,top: 5,bottom: 5,right: 5),
                        badgeContent: Text(widget.leaveCount,
                          style: GoogleFonts.bakbakOne(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        badgeColor: Color(0xff064A76),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
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
                        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        //   content: Text("Working on progress",
                        //     textAlign: TextAlign.center,
                        //     style: TextStyle(
                        //       fontSize: 20,
                        //     ),
                        //   ),
                        // ));
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Early_Leave_NotificationList(xposition: widget.xposition,xstaff: widget.xstaff,)));
                      },
                      child: Badge(
                        showBadge: int.parse(widget.earlyCount) ==0? false : true,
                        padding: EdgeInsets.only(left: 5,top: 5,bottom: 5,right: 5),
                        badgeContent: Text(widget.earlyCount,
                          style: GoogleFonts.bakbakOne(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        badgeColor: Color(0xff064A76),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Absent_NotificationList(xposition: widget.xposition)));
                      },
                      child: Badge(
                        showBadge: int.parse(widget.absentCount) ==0? false : true,
                        padding: EdgeInsets.only(left: 5,top: 5,bottom: 5,right: 5),
                        badgeContent: Text(widget.absentCount,
                          style: GoogleFonts.bakbakOne(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        badgeColor: Color(0xff064A76),
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
                ),
              ]
              else...[

              ]





            ],
          ),
        ));
  }
}