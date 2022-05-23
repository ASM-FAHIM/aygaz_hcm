// import 'dart:async';
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:aygazhcm/data_model/leave_tour_model.dart';
// import 'package:http/http.dart' as http;
//
// import 'leave_tour_apply.dart';
//
//
// Future<List<LeaveTourModel>> fetchPost() async {
//   final response =
//   await http.get(Uri.parse('http://flutterapi.brotherdev.com/api.php'));
//
//   if (response.statusCode == 200) {
//     final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
//
//     return parsed.map<LeaveTourModel>((json) => LeaveTourModel.fromJson(json)).toList();
//   } else {
//     throw Exception('Failed to load album');
//   }
// }
//
//
// class Leave_page extends StatefulWidget {
//   @override
//   _Leave_pageState createState() => _Leave_pageState();
// }
//
// class _Leave_pageState extends State<Leave_page> {
//
//
//   Future<List<LeaveTourModel>>? futurePost;
//
//   //String statusdemo = "";
//
//   changeColor(String statusdemo){
//
//     switch(statusdemo){
//       case "Waiting for Approval":
//         return Colors.blue;
//
//       case "Approved":
//         return Colors.green;
//
//       case "Rejected":
//         return Colors.red;
//
//       default:
//         return Colors.purple;
//
//     }
//     //
//     // if(statusdemo == "Waiting for Approval"){
//     //   print(statusdemo);
//     //     return Colors.grey;
//     // }
//     // else if(statusdemo == "Approved"){
//     //   print(statusdemo);
//     //   return Colors.green;
//     // }
//     // else if(statusdemo == "Rejected"){
//     //   print(statusdemo);
//     //   return Colors.red;
//     // }
//
//   }
//
//
//
//   @override
//   void initState() {
//     super.initState();
//     futurePost = fetchPost();
//
//     fetchPost().whenComplete(() => futurePost);
//     //fetchPost().whenComplete(() => statusdemo);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Color(0xFF8CA6DB),
//             automaticallyImplyLeading: true,
//             title: Center(
//                 child: Text("Leave and Tour",
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.bakbakOne(
//                     fontSize: 20,
//                   ),
//                 )
//             ),
//
//             actions: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 8.0,right: 16,top: 12,bottom: 12),
//                 child: GestureDetector(
//                   onTap: (){
//                     print("Pressed");
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>LeaveApply_page()));
//                   },
//                   child: Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.black),
//                       ),
//                       child: Icon(Icons.add)
//                   ),
//                 ),
//               ),
//             ],
//
//           ),
//           body: FutureBuilder<List<LeaveTourModel>>(
//             future: futurePost,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return RefreshIndicator(
//                   onRefresh: _handleRefresh,
//                   child: ListView.builder(
//                     itemCount: snapshot.data!.length,
//                     itemBuilder: (_, index) => Container(
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(top: 20.0,right: 20,left: 20),
//                             child: Container(
//                               height: MediaQuery.of(context).size.width/2.5,
//                               width: MediaQuery.of(context).size.width,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 //border: Border.all(color: Colors.grey),
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey.withOpacity(0.5),
//                                     spreadRadius: 1,
//                                     blurRadius: 5,
//                                     offset: Offset(0, 3), // changes position of shadow
//                                   ),
//                                 ],
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 20.0,top: 15),
//                                     child: Container(
//                                       padding: const EdgeInsets.all(10),
//                                       decoration: BoxDecoration(
//                                         color: changeColor((snapshot.data![index].aprovalstatus).toString()),
//                                         //border: Border.all(color: Colors.grey),
//                                         borderRadius: BorderRadius.circular(10),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Colors.grey.withOpacity(0.5),
//                                             spreadRadius: 1,
//                                             blurRadius: 5,
//                                             offset: Offset(0, 3), // changes position of shadow
//                                           ),
//                                         ],
//                                       ),
//
//                                       child: Text("${snapshot.data![index].aprovalstatus}",
//                                         textAlign: TextAlign.center,
//                                         style: GoogleFonts.bakbakOne(
//                                           fontSize: 15,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//
//                                     ),
//                                   ),
//
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.only(top: 10.0,left: 20),
//                                         child: Column(
//                                           //mainAxisAlignment: MainAxisAlignment.start,
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
//                                             Text("${snapshot.data![index].leaveType}",
//                                               textAlign: TextAlign.left,
//                                               style: GoogleFonts.bakbakOne(
//                                                 fontSize: 20,
//                                                 color: Color(0xff064A76),
//                                               ),
//                                             ),
//
//                                             Text("Approved By",
//                                               textAlign: TextAlign.left,
//                                               style: GoogleFonts.bakbakOne(
//                                                 fontSize: 15,
//                                                 color: Color(0xff064A76),
//                                               ),
//                                             ),
//
//                                             Text("Soyaib Sharafi",
//                                               textAlign: TextAlign.left,
//                                               style: GoogleFonts.bakbakOne(
//                                                 fontSize: 15,
//                                                 color: Color(0xff064A76),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//
//                                       SizedBox(width: 60,),
//
//                                       Column(
//                                         children: [
//                                           Text("${snapshot.data![index].fromDate}" + " - ",
//                                             textAlign: TextAlign.center,
//                                             style: GoogleFonts.bakbakOne(
//                                               fontSize: 15,
//                                               color: Color(0xff064A76),
//                                             ),
//                                           ),
//
//                                           Text("${snapshot.data![index].toDate}",
//                                             textAlign: TextAlign.center,
//                                             style: GoogleFonts.bakbakOne(
//                                               fontSize: 15,
//                                               color: Color(0xff064A76),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//
//                                     ],
//                                   ),
//
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 20,)
//                         ],
//                       ),
//
//                     ),
//                   ),
//                 );
//               } else {
//                 return Center(
//                   child: Image(image: AssetImage("images/loading.gif")),
//                 );
//               }
//             },
//           ),
//         ),
//     );
//   }
//
//   Future<Null> _handleRefresh() async {
//     await new Future.delayed(new Duration(seconds: 3));
//
//     setState(() {
//       futurePost;
//     });
//
//     return null;
//   }
//
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class Leave_page extends StatefulWidget {
//   @override
//   _Leave_pageState createState() => _Leave_pageState();
//
//   Leave_page({required this.xposition, required this.xstaff, required this.xsid,required this.xbalance,required this.xname, required this.supname});
//   String xposition;
//   String xstaff;
//   String xsid;
//   String xbalance;
//   String xname;
//   String supname;
//   //LoginModel xsid;
// }
//
// class _Leave_pageState extends State<Leave_page> {
//
//
//   Future<List<LeaveandTourModel>>? futurePost;
//
//   int leave_remain = 21;
//   //
//   // late XbalanceModel leave_remain1;
//   // String xbalance = " ";
//   //
//   // Future<String>  getAPIDATA() async {
//   //
//   //   http.Response response = await http.post(Uri.parse('http://a.b.c.d/api/leaveandtour.php'),
//   //       body:jsonEncode(<String, String>{
//   //         "xstaff": widget.xstaff,
//   //         "xtypeleave": "Annual Leave"
//   //       })
//   //   );
//   //
//   //   print("Body:"+response.body);
//   //   print(response.statusCode);
//   //
//   //   leave_remain1 = xbalanceModelFromJson(response.body);
//   //   print("Test:"+leave_remain1.xbalance);
//   //
//   //   xbalance = leave_remain1.xbalance;
//   //
//   //   return '';
//   // }
//
//
//   late AppliedLeaveModel appliedleave;
//   String appleave = " ";
//
//   Future<String>  getappleavedata() async {
//
//     http.Response response = await http.post(Uri.parse('http://a.b.c.d/api/smallAPI/appliedleave.php'),
//         body:jsonEncode(<String, String>{
//           "xstaff": widget.xstaff,
//         })
//     );
//
//     print("Body:"+response.body);
//     print(response.statusCode);
//
//     appliedleave = appliedLeaveModelFromJson(response.body);
//
//
//     //appleave = appliedleave.appliedleave;
//
//     if(appliedleave.appliedleave == null){
//       appleave = "0";
//       //print("Test:"+appliedleave.appliedleave);
//       print("Applied Leave:"+appleave);
//
//     }
//     else{
//       appleave = appliedleave.appliedleave;
//     }
//
//     return '';
//   }
//
//
//
//   Future<List<LeaveandTourModel>> fetchPost() async {
//     var response= await http.post(Uri.parse('http://a.b.c.d/api/leaveandtour.php'),body:
//     jsonEncode(<String, String>{
//       "xposition": widget.xposition,
//     })
//     );
//     if (response.statusCode == 200) {
//       final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
//
//       return parsed.map<LeaveandTourModel>((json) => LeaveandTourModel.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load album');
//     }
//   }
//
//
//   Future<List<AvailebleLeaveModel>>? availableleave;
//   Future<List<AvailebleLeaveModel>> fetchavailableleave() async {
//     var response= await http.post(Uri.parse('http://a.b.c.d/api/availableleave.php'),body:
//     jsonEncode(<String, String>{
//       "xstaff":widget.xstaff
//     })
//     );
//
//     print(response.body);
//
//     if (response.statusCode == 200) {
//       final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
//
//       return parsed.map<AvailebleLeaveModel>((json) => AvailebleLeaveModel.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load album');
//     }
//   }
//
//
//
//   //String statusdemo = "";
//
//   changeColor(String statusdemo){
//
//     switch(statusdemo){
//       case "Applied":
//         return Color(0XFF7FE5EA);
//
//       case "Confirmed":
//         return Colors.green;
//
//       case "Rejected":
//         return Colors.red;
//
//       case "Recommended":
//         return Color(0XFF5E9CF9);
//
//
//       default:
//         return Colors.purple;
//
//     }
//     //
//     // if(statusdemo == "Waiting for Approval"){
//     //   print(statusdemo);
//     //     return Colors.grey;
//     // }
//     // else if(statusdemo == "Approved"){
//     //   print(statusdemo);
//     //   return Colors.green;
//     // }
//     // else if(statusdemo == "Rejected"){
//     //   print(statusdemo);
//     //   return Colors.red;
//     // }
//
//   }
//
//
//
//
//   @override
//   void initState() {
//     super.initState();
//
//     // submitData();
//     //leavedata().whenComplete(() => leave_remain);
//     futurePost = fetchPost();
//     availableleave = fetchavailableleave();
//
//     // getAPIDATA();
//     getappleavedata();
//
//     fetchPost().whenComplete(() => futurePost);
//     fetchavailableleave().whenComplete(() => availableleave);
//
//     // getAPIDATA().whenComplete(() => xbalance);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading:  IconButton(
//           icon: Icon(Icons.arrow_back),
//           color: Color(0xff064A76),
//           onPressed: (){
//             Navigator.pop(context);
//           },
//         ),
//         automaticallyImplyLeading: true,
//         title: Center(
//             child: Text("Leave and Tour",
//               textAlign: TextAlign.center,
//               style: GoogleFonts.bakbakOne(
//                 fontSize: 20,
//                 color: Color(0xff064A76),
//               ),
//             )
//         ),
//
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(left: 8.0,right: 16,top: 12,bottom: 12),
//             child: GestureDetector(
//               onTap: (){
//                 print("Pressed");
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>LeaveApply_page(xstaff: widget.xstaff,xposition: widget.xposition,xsid: widget.xsid,leave_avail: widget.xbalance,xname: widget.xname, appleave: appleave,)));
//                 //submitData();
//               },
//               child: Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Color(0xff064A76)),
//                   ),
//                   child: Icon(Icons.add,
//                     color: Color(0xff064A76),
//                   )
//               ),
//             ),
//           ),
//         ],
//
//       ),
//
//
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//
//                   Card(
//                     child: ExpansionTile(
//                       title: Column(
//                         //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Text("Available leave",
//                             style: GoogleFonts.bakbakOne(
//                               fontSize: 18,
//                               //color: Color(0xff074974),
//                             ),
//                           ),
//                           //Text(" ${snapshot.data![index].status}")
//                         ],
//                       ),
//                       children: [
//                         FutureBuilder<List<AvailebleLeaveModel>>(
//                           future: availableleave,
//                           builder: (context, snapshot) {
//                             if (snapshot.hasData) {
//                               return ListView.builder(
//                                 shrinkWrap: true,
//                                 itemCount: snapshot.data!.length,
//                                 itemBuilder: (_, index) => Container(
//                                   child: Column(
//                                     children: [
//                                       Text("${snapshot.data![index].xtypeleave} "+"${snapshot.data![index].xbalance}",
//                                         style: GoogleFonts.bakbakOne(
//                                           fontSize: 18,
//                                           //color: Color(0xff074974),
//                                         ),
//                                       ),
//
//
//
//                                       // Card(
//                                       //   child: Padding(
//                                       //     padding: EdgeInsets.only(
//                                       //         top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
//                                       //     child: ExpansionTile(
//                                       //       title: Row(
//                                       //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                       //         children: [
//                                       //           Column(
//                                       //             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                       //             children: [
//                                       //               Text("Available leave",
//                                       //                 style: GoogleFonts.bakbakOne(
//                                       //                   fontSize: 18,
//                                       //                   //color: Color(0xff074974),
//                                       //                 ),
//                                       //               ),
//                                       //               //Text(" ${snapshot.data![index].status}")
//                                       //             ],
//                                       //           ),
//                                       //           //Text(" ${snapshot.data![index].status}")
//                                       //         ],
//                                       //       ),
//                                       //       children: <Widget>[
//                                       //         // Text("From Date : "+(DateFormat("dd-MM-yyyy").format(DateTime.parse((snapshot.data![index].fromDate.date).toString()))).toString(),
//                                       //         //   style: TextStyle(
//                                       //         //       fontSize: 15,
//                                       //         //       fontWeight: FontWeight.bold
//                                       //         //   ),
//                                       //         // ),
//                                       //         // Text("To Date : "+(DateFormat("dd-MM-yyyy").format(DateTime.parse((snapshot.data![index].toDate.date).toString()))).toString(),
//                                       //         //   style: TextStyle(
//                                       //         //       fontSize: 15,
//                                       //         //       fontWeight: FontWeight.bold
//                                       //         //   ),
//                                       //         // ),
//                                       //         Text("${snapshot.data![index].xtypeleave} "+"${snapshot.data![index].xbalance}",
//                                       //           style: GoogleFonts.bakbakOne(
//                                       //             fontSize: 18,
//                                       //             //color: Color(0xff074974),
//                                       //           ),
//                                       //         ),
//                                       //
//                                       //         //
//                                       //
//                                       //       ],
//                                       //     ),
//                                       //   ),
//                                       // ),
//                                     ],
//                                   ),
//
//                                 ),
//                               );
//                             } else {
//                               return Center(
//                                 child: Image(image: AssetImage("images/loading.gif")),
//                               );
//                             }
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//
//                   //SizedBox(height: 20,),
//
//                   // Text(widget.xbalance, //Number of leave
//                   //   textAlign: TextAlign.center,
//                   //   style: GoogleFonts.bakbakOne(
//                   //     fontSize: 25,
//                   //     color: Colors.black,
//                   //   ),
//                   // ),
//                   //
//                   // Text("Leave Remaining",
//                   //   textAlign: TextAlign.center,
//                   //   style: GoogleFonts.bakbakOne(
//                   //     fontSize: 15,
//                   //     color: Colors.black,
//                   //   ),
//                   // ),
//
//
//
//
//                 ],
//               ),
//             ),
//
//             Container(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               child: FutureBuilder<List<LeaveandTourModel>>(
//                 future: futurePost,
//                 builder: (context, snapshot) {
//                   if (snapshot.hasData) {
//                     return RefreshIndicator(
//                       onRefresh: _handleRefresh,
//                       child: ListView.builder(
//                         itemCount: snapshot.data!.length,
//                         itemBuilder: (_, index) => Container(
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(top: 20.0,right: 20,left: 20),
//                                 child: Container(
//                                   height: MediaQuery.of(context).size.width/2.5,
//                                   width: MediaQuery.of(context).size.width,
//                                   decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     //border: Border.all(color: Colors.grey),
//                                     borderRadius: BorderRadius.circular(20),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: Color(0xff064A76).withOpacity(0.5),
//                                         spreadRadius: 1,
//                                         blurRadius: 5,
//                                         offset: Offset(0, 3), // changes position of shadow
//                                       ),
//                                     ],
//                                   ),
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.only(left: 20.0,top: 15),
//                                         child: Container(
//                                           padding: const EdgeInsets.all(10),
//                                           decoration: BoxDecoration(
//                                             color: changeColor((snapshot.data![index].xstatus).toString()),
//                                             //border: Border.all(color: Colors.grey),
//                                             borderRadius: BorderRadius.circular(10),
//                                             boxShadow: [
//                                               BoxShadow(
//                                                 color: Colors.grey.withOpacity(0.5),
//                                                 spreadRadius: 1,
//                                                 blurRadius: 5,
//                                                 offset: Offset(0, 3), // changes position of shadow
//                                               ),
//                                             ],
//                                           ),
//
//                                           child: Text("${snapshot.data![index].xstatus}",
//                                             textAlign: TextAlign.center,
//                                             style: GoogleFonts.bakbakOne(
//                                               fontSize: 15,
//                                               color: Colors.white,
//                                             ),
//                                           ),
//
//                                         ),
//                                       ),
//
//                                       Row(
//                                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                         children: [
//                                           Padding(
//                                             padding: const EdgeInsets.only(top: 10.0,left: 20),
//                                             child: Column(
//                                               //mainAxisAlignment: MainAxisAlignment.start,
//                                               crossAxisAlignment: CrossAxisAlignment.start,
//                                               children: [
//                                                 Text("${snapshot.data![index].xtypeleave}",
//                                                   textAlign: TextAlign.left,
//                                                   style: GoogleFonts.bakbakOne(
//                                                     fontSize: 20,
//                                                     color: Colors.black,
//                                                   ),
//                                                 ),
//
//                                                 Text("Approver",
//                                                   textAlign: TextAlign.left,
//                                                   style: GoogleFonts.bakbakOne(
//                                                     fontSize: 15,
//                                                     color: Colors.black,
//                                                   ),
//                                                 ),
//
//                                                 // if({snapshot.data![index].xstatus} == "Applied")...[
//                                                 //   Text("Approver",
//                                                 //     textAlign: TextAlign.left,
//                                                 //     style: GoogleFonts.bakbakOne(
//                                                 //       fontSize: 15,
//                                                 //       color: Colors.black,
//                                                 //     ),
//                                                 //   ),
//                                                 // ]
//                                                 // else...[
//                                                 //   Text("Approved By",
//                                                 //     textAlign: TextAlign.left,
//                                                 //     style: GoogleFonts.bakbakOne(
//                                                 //       fontSize: 15,
//                                                 //       color: Colors.black,
//                                                 //     ),
//                                                 //   ),
//                                                 // ],
//
//
//                                                 Text(widget.supname,
//                                                   textAlign: TextAlign.left,
//                                                   style: GoogleFonts.bakbakOne(
//                                                     fontSize: 15,
//                                                     color: Colors.black,
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//
//                                           SizedBox(width: 60,),
//
//                                           Column(
//                                             children: [
//                                               Text(DateFormat("yyyy-MM-dd").format((snapshot.data![index].xdatefrom.date)) + " - ",
//                                                 textAlign: TextAlign.center,
//                                                 style: GoogleFonts.bakbakOne(
//                                                   fontSize: 15,
//                                                   color: Colors.black,
//                                                 ),
//                                               ),
//
//                                               //Text("${snapshot.data![index].xdateto.date}",
//                                               Text(DateFormat("yyyy-MM-dd").format((snapshot.data![index].xdateto.date)),
//                                                 textAlign: TextAlign.center,
//                                                 style: GoogleFonts.bakbakOne(
//                                                   fontSize: 15,
//                                                   color: Colors.black,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//
//                                         ],
//                                       ),
//
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(height: 20,)
//                             ],
//                           ),
//
//                         ),
//                       ),
//                     );
//                   } else {
//                     return Center(
//                       child: Image(image: AssetImage("images/loading.gif")),
//                     );
//                   }
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Future<Null> _handleRefresh() async {
//     await new Future.delayed(new Duration(seconds: 3));
//
//     setState(() {
//       futurePost;
//     });
//
//     return null;
//   }
//
// }

//new Leave and tour page

class Leave_page extends StatefulWidget {
  const Leave_page({Key? key}) : super(key: key);

  @override
  State<Leave_page> createState() => _Leave_pageState();
}

class _Leave_pageState extends State<Leave_page> {
  @override
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
            "Leave and Tour",
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
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              children: [
                Center(
                    child: CircularProgressIndicator(
                  color: Color(0xff074974),
                )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Work in progress...",
                  style: GoogleFonts.bakbakOne(
                    fontSize: 20,
                    color: Color(0xff074974),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
