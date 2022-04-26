import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../../../data_model/notification_model/admin_approver_model/spr_admin_model.dart';

class SpotPurchaseAdvance_notification extends StatefulWidget {
  //const CS_notification({Key? key}) : super(key: key);
  SpotPurchaseAdvance_notification(
      {required this.xposition,
      required this.xstaff,
      required this.zemail,
      required this.zid});
  String xposition;
  String xstaff;
  String zemail;
  String zid;

  @override
  State<SpotPurchaseAdvance_notification> createState() =>
      _SpotPurchaseAdvance_notificationState();
}

class _SpotPurchaseAdvance_notificationState
    extends State<SpotPurchaseAdvance_notification> {
  Future<List<SprModel>>? futurePost;
  String rejectNote = " ";

  Future<List<SprModel>> fetchPost() async {
    var response = await http.post(
        Uri.parse('http://172.20.20.69/aygaz/notifications/spr.php'),
        body: jsonEncode(<String, String>{
          "xposition": widget.xposition,
        }));

    // print(response.body);

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

      return parsed.map<SprModel>((json) => SprModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();

    // submitData();
    futurePost = fetchPost();

    fetchPost().whenComplete(() => futurePost);
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
            "Spot Purchase Advance Notification",
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
      body: Container(
          // padding: EdgeInsets.all(20),
          // child: FutureBuilder<List<SprModel>>(
          //   future: futurePost,
          //   builder: (context, snapshot) {
          //     if (snapshot.hasData) {
          //       return ListView.builder(
          //         itemCount: snapshot.data!.length,
          //         itemBuilder: (_, index) => Container(
          //           child: Column(
          //             children: [
          //               Card(
          //                 child: Padding(
          //                   padding: EdgeInsets.only(left: 5, bottom: 10.0),
          //                   child: ExpansionTile(
          //                     expandedCrossAxisAlignment:
          //                         CrossAxisAlignment.start,
          //                     title: Row(
          //                       mainAxisAlignment: MainAxisAlignment.start,
          //                       children: [
          //                         Column(
          //                           mainAxisAlignment:
          //                               MainAxisAlignment.spaceEvenly,
          //                           children: [
          //                             Container(
          //                               width: MediaQuery.of(context).size.width /
          //                                   1.6,
          //                               child: Column(
          //                                 children: [
          //                                   Text(
          //                                     "${snapshot.data![index].xtornum}",
          //                                     style: GoogleFonts.bakbakOne(
          //                                       fontSize: 18,
          //                                       //color: Color(0xff074974),
          //                                     ),
          //                                   ),
          //                                   Text(
          //                                     "${snapshot.data![index].preparer}",
          //                                     style: GoogleFonts.bakbakOne(
          //                                       fontSize: 18,
          //                                       //color: Color(0xff074974),
          //                                     ),
          //                                   ),
          //                                   Text(
          //                                     "${snapshot.data![index].deptname}",
          //                                     style: GoogleFonts.bakbakOne(
          //                                       fontSize: 18,
          //                                       //color: Color(0xff074974),
          //                                     ),
          //                                   ),
          //                                 ],
          //                               ),
          //                             ),
          //                           ],
          //                         ),
          //                       ],
          //                     ),
          //                     children: <Widget>[
          //                       Text(
          //                         "SPR No.: " +
          //                             " ${snapshot.data![index].xtornum}",
          //                         textAlign: TextAlign.center,
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Text(
          //                         "SPR Date: " +
          //                             " ${DateFormat("dd-MM-yyyy").format(DateTime.parse((snapshot.data![index].xdate.date).toString()))}",
          //                         textAlign: TextAlign.center,
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Text(
          //                         "Required By Date: " +
          //                             "  ${DateFormat("dd-MM-yyyy").format(DateTime.parse((snapshot.data![index].xdatereq.date).toString()))}",
          //                         textAlign: TextAlign.center,
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Text(
          //                         "From Store: " + snapshot.data![index].xfwh,
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Text(
          //                         "From Store Name:" +
          //                             "${snapshot.data![index].xfbrname ?? " "}",
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Text(
          //                         "Reference: " + "${snapshot.data![index].xref}",
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Text(
          //                         "Department Name:" +
          //                             "${snapshot.data![index].xregi}",
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Text(
          //                         "Unit: " +
          //                             "${snapshot.data![index].xempunit ?? " "}",
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Text(
          //                         "Justification: " +
          //                             "${snapshot.data![index].xlong}",
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Text(
          //                         "SR Status:" +
          //                             "${snapshot.data![index].xstatustor}",
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Text(
          //                         "Justification:" +
          //                             "${snapshot.data![index].xlong}",
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Text(
          //                         "SPR Status: " +
          //                             "${snapshot.data![index].xstatustor}",
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Text(
          //                         "Requisition Type: " +
          //                             "${snapshot.data![index].xtypeobj}",
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Text(
          //                         "Shift Name: " +
          //                             "${snapshot.data![index].xshift}",
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Text(
          //                         "Request to: " +
          //                             "${snapshot.data![index].xreqtype}",
          //                         style: GoogleFonts.bakbakOne(
          //                           fontSize: 18,
          //                           //color: Color(0xff074974),
          //                         ),
          //                       ),
          //                       Row(
          //                         mainAxisAlignment: MainAxisAlignment.center,
          //                         children: [
          //                           FlatButton(
          //                             color: Colors.green,
          //                             onPressed: () async {
          //                               var response = await http.post(
          //                                   Uri.parse(
          //                                       'http://172.20.20.69/aygaz/notifications/sprapprove.php'),
          //                                   body: jsonEncode(<String, String>{
          //                                     "zid": widget.zid,
          //                                     "user": widget.zemail,
          //                                     "xposition": widget.xposition,
          //                                     "xtornum": snapshot
          //                                         .data![index].xtornum
          //                                         .toString(),
          //                                     "ypd": "0",
          //                                     " xstatustor": snapshot
          //                                         .data![index].xstatustor
          //                                         .toString(),
          //                                     "aprcs": "SPR Approval"
          //                                   }));
          //
          //                               Get.snackbar('Message', 'Approved',
          //                                   backgroundColor: Color(0XFF8CA6DB),
          //                                   colorText: Colors.white,
          //                                   snackPosition: SnackPosition.BOTTOM);
          //
          //                               setState(() {
          //                                 snapshot.data!.removeAt(index);
          //                               });
          //
          //                               print(response.statusCode);
          //                               print(response.body);
          //                             },
          //                             child: Text("Approve"),
          //                           ),
          //                           SizedBox(
          //                             width: 50,
          //                           ),
          //                           FlatButton(
          //                             color: Colors.red,
          //                             onPressed: () {
          //                               showDialog(
          //                                   context: context,
          //                                   builder: (BuildContext context) {
          //                                     return AlertDialog(
          //                                       title: const Text("Reject Note"),
          //                                       content: Column(
          //                                         children: [
          //                                           Container(
          //                                             //height: MediaQuery.of(context).size.height/6,
          //                                             child: TextFormField(
          //                                               style:
          //                                                   GoogleFonts.bakbakOne(
          //                                                 //fontWeight: FontWeight.bold,
          //                                                 fontSize: 18,
          //                                                 color: Colors.black,
          //                                               ),
          //                                               onChanged: (input) {
          //                                                 rejectNote = input;
          //                                               },
          //                                               validator: (input) {
          //                                                 if (input!.isEmpty) {
          //                                                   return "Please Write Reject Note";
          //                                                 }
          //                                               },
          //                                               scrollPadding:
          //                                                   EdgeInsets.all(20),
          //                                               decoration:
          //                                                   InputDecoration(
          //                                                 contentPadding:
          //                                                     EdgeInsets.only(
          //                                                         left:
          //                                                             20), // add padding to adjust text
          //                                                 isDense: false,
          //
          //                                                 hintStyle: GoogleFonts
          //                                                     .bakbakOne(
          //                                                   //fontWeight: FontWeight.bold,
          //                                                   fontSize: 18,
          //                                                   color: Colors.black,
          //                                                 ),
          //                                                 labelText:
          //                                                     "Reject Note",
          //                                                 labelStyle: GoogleFonts
          //                                                     .bakbakOne(
          //                                                   fontSize: 18,
          //                                                   color: Colors.black,
          //                                                 ),
          //                                                 border:
          //                                                     OutlineInputBorder(),
          //                                               ),
          //                                             ),
          //                                           ),
          //                                         ],
          //                                       ),
          //                                       actions: [
          //                                         FlatButton(
          //                                           color: Color(0xff064A76),
          //                                           onPressed: () async {
          //                                             //http://172.20.20.69/api/adminapprove/poreject.php
          //
          //                                             var response = await http.post(
          //                                                 Uri.parse(
          //                                                     'http://172.20.20.69/aygaz/notifications/sprreject.php'),
          //                                                 body: jsonEncode(<
          //                                                     String, String>{
          //                                                   "zid": widget.zid,
          //                                                   "user": widget.zemail,
          //                                                   "xposition":
          //                                                       widget.xposition,
          //                                                   "wh": "0",
          //                                                   "xtornum": snapshot
          //                                                       .data![index]
          //                                                       .xtornum,
          //                                                   "xnote": rejectNote
          //                                                 }));
          //                                             print(response.statusCode);
          //                                             print(response.body);
          //                                             Navigator.pop(context);
          //
          //                                             Get.snackbar(
          //                                                 'Message', 'Rejected',
          //                                                 backgroundColor:
          //                                                     Color(0XFF8CA6DB),
          //                                                 colorText: Colors.white,
          //                                                 snackPosition:
          //                                                     SnackPosition
          //                                                         .BOTTOM);
          //
          //                                             setState(() {
          //                                               snapshot.data!
          //                                                   .removeAt(index);
          //                                             });
          //                                           },
          //                                           child: Text(
          //                                             "Reject",
          //                                             style:
          //                                                 GoogleFonts.bakbakOne(
          //                                               color: Colors.white,
          //                                             ),
          //                                           ),
          //                                         ),
          //                                       ],
          //                                       scrollable: true,
          //                                     );
          //                                   });
          //                             },
          //                             child: Text("Reject"),
          //                           ),
          //                         ],
          //                       )
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       );
          //     } else {
          //       return Center(
          //         child: Image(image: AssetImage("images/loading.gif")),
          //       );
          //     }
          //   },
          // ),
          ),
    );
  }
}
