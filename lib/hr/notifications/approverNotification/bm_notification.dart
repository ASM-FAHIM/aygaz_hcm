import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../../../data_model/notification_model/admin_approver_model/bm_admin_model.dart';
import '../../../data_model/notification_model/admin_approver_model/details/bm_details_model.dart';
import 'details/bm_notification_details.dart';

class BM_Notification extends StatefulWidget {
  BM_Notification(
      {required this.xposition,
      required this.xstaff,
      required this.zemail,
      required this.zid});
  String xposition;
  String xstaff;
  String zemail;
  String zid;

  @override
  State<BM_Notification> createState() => BM_notification();
}

class BM_notification extends State<BM_Notification> {
  Future<List<BmModel>>? futurePost;
  String rejectNote = " ";

  Future<List<BmModel>> fetchPost() async {
    var response = await http.post(
        Uri.parse('http://a.b.c.d/aygaz/notifications/pendingBOM.php'),
        body: jsonEncode(<String, String>{
          "xposition": widget.xposition,
        }));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

      return parsed.map<BmModel>((json) => BmModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<List<BmDetailsModel>> fetchPostdetails() async {
    var response = await http.post(
        Uri.parse('http://a.b.c.d/aygaz/notifications/srdetails.php'),
        body: jsonEncode(<String, String>{"xbomkey": "BM--000002"}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

      return parsed
          .map<BmDetailsModel>((json) => BmDetailsModel.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
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
            "Pending BOM Notification",
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
        padding: EdgeInsets.all(20),
        child: FutureBuilder<List<BmModel>>(
          future: futurePost,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  child: Column(
                    children: [
                      Card(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, bottom: 6.0),
                          child: ExpansionTile(
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.start,
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.6,
                                      child: Column(
                                        children: [
                                          Text(
                                            "${snapshot.data![index].xbombkey}",
                                            style: GoogleFonts.bakbakOne(
                                              fontSize: 18,
                                              //color: Color(0xff074974),
                                            ),
                                          ),
                                          Text(
                                            "${snapshot.data![index].preparer}",
                                            style: GoogleFonts.bakbakOne(
                                              fontSize: 18,
                                              //color: Color(0xff074974),
                                            ),
                                          ),
                                          Text(
                                            "${snapshot.data![index].deptname}",
                                            style: GoogleFonts.bakbakOne(
                                              fontSize: 18,
                                              //color: Color(0xff074974),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            children: <Widget>[
                              Text(
                                "BOM Key: " +
                                    " ${snapshot.data![index].xbomkey}",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.bakbakOne(
                                  fontSize: 18,
                                  //color: Color(0xff074974),
                                ),
                              ),
                              Text(
                                "Description: " +
                                    "  ${snapshot.data![index].xdesc}",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.bakbakOne(
                                  fontSize: 18,
                                  //color: Color(0xff074974),
                                ),
                              ),
                              Text(
                                "Finished Product Code: " +
                                    "  ${snapshot.data![index].xitem}",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.bakbakOne(
                                  fontSize: 18,
                                  //color: Color(0xff074974),
                                ),
                              ),
                              // Text(
                              //   "Description: " +
                              //       "  ${snapshot.data![index].xitemdesc}",
                              //   textAlign: TextAlign.center,
                              //   style: GoogleFonts.bakbakOne(
                              //     fontSize: 18,
                              //     //color: Color(0xff074974),
                              //   ),
                              // ),
                              Text(
                                "Date: " +
                                    " ${DateFormat("dd-MM-yyyy").format(DateTime.parse((snapshot.data![index].xdate.date).toString()))}",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.bakbakOne(
                                  fontSize: 18,
                                  //color: Color(0xff074974),
                                ),
                              ),
                              Text(
                                "Preferred Batch Quity: " +
                                    snapshot.data![index].xpreferbatchqty,
                                style: GoogleFonts.bakbakOne(
                                  fontSize: 18,
                                  //color: Color(0xff074974),
                                ),
                              ),
                              Text(
                                "Approval Status: " +
                                    "${snapshot.data![index].xstatus}",
                                style: GoogleFonts.bakbakOne(
                                  fontSize: 18,
                                  //color: Color(0xff074974),
                                ),
                              ),
                              FlatButton(
                                color: Colors.lightBlueAccent,
                                onPressed: () async {
                                  final result = await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BM_details(
                                                xbomkey: snapshot
                                                    .data![index].xbomkey,
                                                zid: widget.zid,
                                                xposition: widget.xposition,
                                                zemail: widget.zemail,
                                                xstatus: snapshot
                                                    .data![index].xstatus,
                                                xstaff: widget.xstaff,
                                              )));
                                  if (result.toString() == "approval") {
                                    debugPrint("pressed");
                                    setState(() {
                                      snapshot.data!.removeAt(index);
                                    });
                                  }
                                },
                                child: Center(child: Text("Details")),
                              ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     FlatButton(
                              //       color: Colors.green,
                              //       onPressed: () async {
                              //         var response = await http.post(
                              //             Uri.parse(
                              //                 'http://a.b.c.d/aygaz/notifications/pendingBOMApprove.php'),
                              //             body: jsonEncode(<String, String>{
                              //               "zid": widget.zid,
                              //               "user": widget.zemail,
                              //               "xposition": widget.xposition,
                              //               "xbomkey": snapshot
                              //                   .data![index].xbomkey
                              //                   .toString(),
                              //               "ypd": "0",
                              //               " xstatus": snapshot
                              //                   .data![index].xstatus
                              //                   .toString(),
                              //               "aprcs": "BM Approval"
                              //             }));
                              //
                              //         Get.snackbar('Message', 'Approved',
                              //             backgroundColor: Color(0XFF8CA6DB),
                              //             colorText: Colors.white,
                              //             snackPosition: SnackPosition.BOTTOM);
                              //
                              //         setState(() {
                              //           snapshot.data!.removeAt(index);
                              //         });
                              //
                              //         print(response.statusCode);
                              //         print(response.body);
                              //       },
                              //       child: Text("Approve"),
                              //     ),
                              //     SizedBox(
                              //       width: 50,
                              //     ),
                              //     FlatButton(
                              //       color: Colors.red,
                              //       onPressed: () {
                              //         showDialog(
                              //             context: context,
                              //             builder: (BuildContext context) {
                              //               return AlertDialog(
                              //                 title: const Text("Reject Note"),
                              //                 content: Column(
                              //                   children: [
                              //                     Container(
                              //                       child: TextFormField(
                              //                         style:
                              //                             GoogleFonts.bakbakOne(
                              //                           //fontWeight: FontWeight.bold,
                              //                           fontSize: 18,
                              //                           color: Colors.black,
                              //                         ),
                              //                         onChanged: (input) {
                              //                           rejectNote = input;
                              //                         },
                              //                         validator: (input) {
                              //                           if (input!.isEmpty) {
                              //                             return "Please Write Reject Note";
                              //                           }
                              //                         },
                              //                         scrollPadding:
                              //                             EdgeInsets.all(20),
                              //                         decoration:
                              //                             InputDecoration(
                              //                           contentPadding:
                              //                               EdgeInsets.only(
                              //                                   left:
                              //                                       20), // add padding to adjust text
                              //                           isDense: false,
                              //
                              //                           hintStyle: GoogleFonts
                              //                               .bakbakOne(
                              //                             //fontWeight: FontWeight.bold,
                              //                             fontSize: 18,
                              //                             color: Colors.black,
                              //                           ),
                              //                           labelText:
                              //                               "Reject Note",
                              //                           labelStyle: GoogleFonts
                              //                               .bakbakOne(
                              //                             fontSize: 18,
                              //                             color: Colors.black,
                              //                           ),
                              //                           border:
                              //                               OutlineInputBorder(),
                              //                         ),
                              //                       ),
                              //                     ),
                              //                   ],
                              //                 ),
                              //                 actions: [
                              //                   FlatButton(
                              //                     color: Color(0xff064A76),
                              //                     onPressed: () async {
                              //                       //http://a.b.c.d/api/adminapprove/poreject.php
                              //
                              //                       var response = await http.post(
                              //                           Uri.parse(
                              //                               'http://a.b.c.d/aygaz/notifications/pendingBOMreject.php'),
                              //                           body: jsonEncode(<
                              //                               String, String>{
                              //                             "zid": widget.zid,
                              //                             "user": widget.zemail,
                              //                             "xposition":
                              //                                 widget.xposition,
                              //                             "wh": "0",
                              //                             "xbomkey": snapshot
                              //                                 .data![index]
                              //                                 .xbomkey,
                              //                             "xnote1": rejectNote
                              //                           }));
                              //                       print(response.statusCode);
                              //                       print(response.body);
                              //                       Navigator.pop(context);
                              //
                              //                       Get.snackbar(
                              //                           'Message', 'Rejected',
                              //                           backgroundColor:
                              //                               Color(0XFF8CA6DB),
                              //                           colorText: Colors.white,
                              //                           snackPosition:
                              //                               SnackPosition
                              //                                   .BOTTOM);
                              //
                              //                       setState(() {
                              //                         snapshot.data!
                              //                             .removeAt(index);
                              //                       });
                              //                     },
                              //                     child: Text(
                              //                       "Reject",
                              //                       style:
                              //                           GoogleFonts.bakbakOne(
                              //                         color: Colors.white,
                              //                       ),
                              //                     ),
                              //                   ),
                              //                 ],
                              //                 scrollable: true,
                              //               );
                              //             });
                              //       },
                              //       child: Text("Reject"),
                              //     ),
                              //   ],
                              // )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Center(
                child: Image(image: AssetImage("images/loading.gif")),
              );
            }
          },
        ),
      ),
    );
  }
}
