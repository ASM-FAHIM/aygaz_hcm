import 'package:aygazhcm/hr/notifications/approverNotification/bat_notification.dart';
import 'package:aygazhcm/hr/notifications/approverNotification/batp_notification.dart';
import 'package:aygazhcm/hr/notifications/approverNotification/bm_notification.dart';
import 'package:aygazhcm/hr/notifications/approverNotification/bmp_notification.dart';
import 'package:aygazhcm/hr/notifications/approverNotification/do_notification.dart';
import 'package:aygazhcm/hr/notifications/approverNotification/grn_notification.dart';
import 'package:aygazhcm/hr/notifications/approverNotification/pending_sales_return_approval_notification.dart';
import 'package:aygazhcm/hr/notifications/approverNotification/po_notification.dart';
import 'package:aygazhcm/hr/notifications/approverNotification/prn_notofication.dart';
import 'package:aygazhcm/hr/notifications/approverNotification/special/other_advance_money_requi_notification.dart';
import 'package:aygazhcm/hr/notifications/approverNotification/spot_purchase_advance_notification.dart';
import 'package:aygazhcm/hr/notifications/approverNotification/sqc_notification.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../absent_employee.dart';
import '../cs_notification.dart';
import '../early_employee.dart';
import '../late_employee.dart';
import '../leave_tour_employee.dart';
import '../pending_voucher.dart';
import '../special/advance_adjustment_notification.dart';
import '../special/land_advance_request_notificaition.dart';
import '../special/legal_activities_notification.dart';
import '../special/lfa_approval_notificaition.dart';
import '../spr_notification.dart';
import '../sr_notification.dart';

class AdminNotificationList extends StatefulWidget {
  AdminNotificationList(
      {required this.xposition,
      required this.xstaff,
      required this.zemail,
      required this.zid,
      required this.adminabsent,
      required this.adminearly,
      required this.adminlate,
      required this.adminPO,
      required this.adminSR,
      required this.adminCS,
      required this.adminLeave,
      required this.adminLA,
      required this.adminLFA});
  String xposition;
  String xstaff;
  String zemail;
  String zid;
  String adminearly;
  String adminlate;
  String adminabsent;
  String adminSR;
  String adminPO;
  String adminCS;
  String adminLeave;
  String adminLA;
  String adminLFA;

  @override
  _AdminNotificationListState createState() => _AdminNotificationListState();
}

class _AdminNotificationListState extends State<AdminNotificationList> {
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
              if (widget.zid == "100060" && widget.zemail == "810") ...[
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Admin_Late_Leave_NotificationList(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminlate) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          // widget.adminlate.toString(),
                          "*",
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
                              "Late Employees",
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
                                    Admin_Early_Leave_NotificationList(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminearly) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          "*",
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
                              "Early Leave Employee",
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
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 10, left: 10),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Admin_Leave_Tour_NotificationList(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminLeave) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          "*",
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
                                "Leave&Tour for Approval",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Admin_Absent_NotificationList(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminabsent) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          "*",
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
                              "Absent Employee",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PO_WO_approval_NotificationList(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminPO) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          // widget.adminPO,
                          "*",
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
                              "Pending PO/WO For Approval",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Legal_activities_Notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminLA) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminLA,
                          "*",
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
                              "Fund Requisition for Legal Activities",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Lfa_Approval_NOtification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminLFA) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminLFA,
                          "*",
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
                              "Legal Fund Adjustment Approval",
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
              ] else if (widget.zid == "100190") ...[
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 7,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PO_WO_approval_NotificationList(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminPO) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminPO,
                          "*",
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
                              "Pending PO/WO For Approval",
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
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 5,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Advance_request_NOtification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          // widget.adminCS,
                          "*",
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
                              "Pending Land Advance Request for Approval",
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
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 5,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Advance_Money_requi_Notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminSR) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminSR,
                          "*",
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
                              "Pending Other Advance Money Requition for Approval",
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
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 5,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Advance_adjust_Notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminSR) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminSR,
                          "*",
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
                              "Pending Advance Adjustment for Approval",
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
              ] else if (widget.zid == "100060") ...[
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Admin_Late_Leave_NotificationList(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminlate) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminlate.toString(),
                          "*",
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
                              "Late Employees",
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
                                    Admin_Early_Leave_NotificationList(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminearly) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminearly,
                          "*",
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
                              "Early Leave Employee",
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
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 10, left: 10),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Admin_Leave_Tour_NotificationList(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminLeave) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminLeave,
                          "*",
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
                                "Leave&Tour for Approval",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Admin_Absent_NotificationList(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminabsent) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminabsent,
                          "*",
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
                              "Absent Employee",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PO_WO_approval_NotificationList(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminPO) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          // widget.adminPO,
                          "*",
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
                              "Pending PO/WO For Approval",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CS_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminCS,
                          "*",
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
                              "Pending CS For Approval",
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

                // Padding(
                //   padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                //   child: Container(
                //     height: MediaQuery.of(context).size.width / 9,
                //     width: MediaQuery.of(context).size.width,
                //     decoration: BoxDecoration(
                //       color: Colors.white70,
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey.withOpacity(0.5),
                //           spreadRadius: 1,
                //           blurRadius: 5,
                //           offset: Offset(0, 3), // changes position of shadow
                //         ),
                //       ],
                //     ),
                //     child: FlatButton(
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(20.0)),
                //       onPressed: () {
                //         Navigator.push(context, MaterialPageRoute(builder: (context)=>PO_WO_approval_NotificationList(xposition: widget.xposition,xstaff: widget.xstaff,zemail: widget.zemail,)));
                //       },
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text(
                //             "Pending PR For Approval",
                //             textAlign: TextAlign.center,
                //             style: GoogleFonts.bakbakOne(
                //               fontSize: 18,
                //               color: Color(0xff064A76),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),

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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SR_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminSR) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminSR,
                          "*",
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
                              "Pending SR For Approval",
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
              ] else ...[
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PO_WO_approval_NotificationList(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminPO) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminPO,
                          "*",
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
                              "Pending PO/WO For Approval",
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
                // Padding(
                //   padding:
                //       const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                //   child: Container(
                //     height: MediaQuery.of(context).size.width / 8,
                //     width: MediaQuery.of(context).size.width,
                //     decoration: BoxDecoration(
                //       color: Colors.white70,
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey.withOpacity(0.5),
                //           spreadRadius: 1,
                //           blurRadius: 5,
                //           offset: Offset(0, 3), // changes position of shadow
                //         ),
                //       ],
                //     ),
                //     child: FlatButton(
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(20.0)),
                //       onPressed: () {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) =>
                //                     Admin_Late_Leave_NotificationList(
                //                       xposition: widget.xposition,
                //                       xstaff: widget.xstaff,
                //                       zemail: widget.zemail,
                //                     )));
                //       },
                //       child: Badge(
                //         showBadge:
                //             int.parse(widget.adminlate) == 0 ? false : true,
                //         padding: EdgeInsets.only(
                //             left: 5, top: 5, bottom: 5, right: 5),
                //         badgeContent: Text(
                //           // widget.adminlate.toString(),
                //           "*",
                //           style: GoogleFonts.bakbakOne(
                //             fontSize: 15,
                //             color: Colors.white,
                //           ),
                //         ),
                //         badgeColor: Color(0xff064A76),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             Text(
                //               "Late Employees",
                //               textAlign: TextAlign.center,
                //               style: GoogleFonts.bakbakOne(
                //                 fontSize: 18,
                //                 color: Color(0xff064A76),
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CS_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminCS,
                          "*",
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
                              "Pending CS For Approval",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SR_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminSR) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminSR,
                          "*",
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
                              "Pending SR For Approval",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pending_voucher(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminSR) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminSR,
                          "*",
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
                              "Pending Voucher For Approval",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SPR_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminCS,
                          "*",
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
                              "Pending SPR Notification",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SpotPurchaseAdvance_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminCS,
                          "*",
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
                              "Pending Spot Purchase Advance",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GRN_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminCS,
                          "*",
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
                              "GRN Notification",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SQC_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminCS,
                          "*",
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
                              "SQC Notification",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PRN_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminCS,
                          "*",
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
                              "Pending PRN Notification",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PSRA_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminCS,
                          "*",
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
                              "Pending SO Notification",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DO_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminCS,
                          "*",
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
                              "Pending DO Notification",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PSRA_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminCS,
                          "*",
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
                              "Pending PSRA Notification",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BM_Notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminCS,
                          "*",
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
                              "Pending BM Notification",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BMP_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminCS,
                          "*",
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
                              "Pending BMP Notification",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BATP_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminCS,
                          "*",
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
                              "Pending BATP Notification",
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
                // Padding(
                //   padding:
                //       const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                //   child: Container(
                //     height: MediaQuery.of(context).size.width / 8,
                //     width: MediaQuery.of(context).size.width,
                //     decoration: BoxDecoration(
                //       color: Colors.white70,
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey.withOpacity(0.5),
                //           spreadRadius: 1,
                //           blurRadius: 5,
                //           offset: Offset(0, 3), // changes position of shadow
                //         ),
                //       ],
                //     ),
                //     child: FlatButton(
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(20.0)),
                //       onPressed: () {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) =>
                //                     PendingBatchInspec_notification(
                //                       xposition: widget.xposition,
                //                       xstaff: widget.xstaff,
                //                       zemail: widget.zemail,
                //                       zid: widget.zid,
                //                     )));
                //       },
                //       child: Badge(
                //         showBadge:
                //             int.parse(widget.adminCS) == 0 ? false : true,
                //         padding: EdgeInsets.only(
                //             left: 5, top: 5, bottom: 5, right: 5),
                //         badgeContent: Text(
                //           //widget.adminCS,
                //           "*",
                //           style: GoogleFonts.bakbakOne(
                //             fontSize: 15,
                //             color: Colors.white,
                //           ),
                //         ),
                //         badgeColor: Color(0xff064A76),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             Text(
                //               "Pending Batch Inspection",
                //               textAlign: TextAlign.center,
                //               style: GoogleFonts.bakbakOne(
                //                 fontSize: 18,
                //                 color: Color(0xff064A76),
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BAT_notification(
                                      xposition: widget.xposition,
                                      xstaff: widget.xstaff,
                                      zemail: widget.zemail,
                                      zid: widget.zid,
                                    )));
                      },
                      child: Badge(
                        showBadge:
                            int.parse(widget.adminCS) == 0 ? false : true,
                        padding: EdgeInsets.only(
                            left: 5, top: 5, bottom: 5, right: 5),
                        badgeContent: Text(
                          //widget.adminCS,
                          "*",
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
                              "Pending BAT Notification",
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
            ],
          ),
        ));
  }
}
