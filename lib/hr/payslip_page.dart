// // import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:intl/intl.dart';
// //
// // class Payslip_page extends StatefulWidget {
// //   //const Payslip_page({Key? key}) : super(key: key);
// //
// //   Payslip_page({required this.xname});
// //   String xname;
// //
// //   @override
// //   _Payslip_pageState createState() => _Payslip_pageState();
// // }
// //
// // class _Payslip_pageState extends State<Payslip_page> {
// //
// //   String dropdownvalue = 'This Month';
// //   //String date = DateFormat("yyyy-MM-dd").format(DateTime.now());
// //   //DateTime now = DateTime.now();
// //   //String date = DateTime.now().toString();
// //   String Onlydate = new DateFormat("mm").format(DateTime.now());
// //
// //   //outtime = '$Onlydate';
// //
// //   // List of items in our dropdown menu
// //   var items = [
// //     'This Month',
// //     'Last Month',
// //     '2 Months Ago'
// //     //'2 Months Ago',
// //   ];
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Payslip'),
// //         backgroundColor: Color(0xFF8CA6DB),
// //       ),
// //       body: SingleChildScrollView(
// //         child: Column(
// //           children: [
// //             SizedBox(
// //               height: 20,
// //             ),
// //             Container(
// //               height: MediaQuery.of(context).size.height/7.5,
// //               width: MediaQuery.of(context).size.width,
// //               decoration: BoxDecoration(
// //                 color: Colors.white,
// //                 // color: ispressed ? Colors.white : Colors.grey,
// //                 //border: Border.all(color: Colors.grey),
// //                 borderRadius: BorderRadius.circular(20),
// //                 boxShadow: [
// //                   BoxShadow(
// //                     color: Colors.grey.withOpacity(0.5),
// //                     spreadRadius: 1,
// //                     blurRadius: 5,
// //                     offset: Offset(0, 3), // changes position of shadow
// //                   ),
// //                 ],
// //               ),
// //               child: Column(
// //                 //mainAxisAlignment: MainAxisAlignment.start,
// //                 children: [
// //                   SizedBox(height: 20,),
// //                   Text("Name: ${widget.xname}",
// //                     textAlign: TextAlign.justify,
// //                     style: GoogleFonts.openSans(
// //                       fontWeight: FontWeight.bold,
// //                       fontSize: 20,
// //                       color: Colors.black,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             SizedBox(
// //               height: 20,
// //             ),
// //             Container(
// //               height: MediaQuery.of(context).size.height/7.5,
// //               width: MediaQuery.of(context).size.width,
// //               decoration: BoxDecoration(
// //                 color: Colors.white,
// //                 // color: ispressed ? Colors.white : Colors.grey,
// //                 //border: Border.all(color: Colors.grey),
// //                 borderRadius: BorderRadius.circular(20),
// //                 boxShadow: [
// //                   BoxShadow(
// //                     color: Colors.grey.withOpacity(0.5),
// //                     spreadRadius: 1,
// //                     blurRadius: 5,
// //                     offset: Offset(0, 3), // changes position of shadow
// //                   ),
// //                 ],
// //               ),
// //               child: Column(
// //                 children: [
// //                   SizedBox(height: 20,),
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: [
// //                       SizedBox(width: 30,),
// //                       Text("Month:",
// //                         style: GoogleFonts.openSans(
// //                           fontWeight: FontWeight.bold,
// //                           fontSize: 20,
// //                           color: Colors.black,
// //                         ),
// //                       ),
// //                       SizedBox(width: 20,),
// //                       DropdownButton(
// //                         value: dropdownvalue,
// //
// //                         // Down Arrow Icon
// //                         icon: const Icon(Icons.keyboard_arrow_down),
// //
// //                         // Array list of items
// //                         items: items.map((String items) {
// //                           return DropdownMenuItem(
// //                             value: items,
// //                             child: Text(items),
// //                           );
// //                         }).toList(),
// //                         // After selecting the desired option,it will
// //                         // change button value to selected value
// //                         onChanged: (String? newValue) {
// //                           setState(() {
// //                             dropdownvalue = newValue!;
// //                           });
// //                         },
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //
// //             ),
// //             SizedBox(height: 20,),
// //             Center(
// //               child: Container(
// //                 height: 40,
// //                 width: MediaQuery.of(context).size.width/1.2,
// //                 decoration: BoxDecoration(
// //                   color: Color(0xff8CA6DB),
// //                   //border: Border.all(color: Colors.grey),
// //                   borderRadius: BorderRadius.circular(10),
// //                   boxShadow: [
// //                     BoxShadow(
// //                       color: Colors.grey.withOpacity(0.5),
// //                       spreadRadius: 1,
// //                       blurRadius: 5,
// //                       offset: Offset(0, 3), // changes position of shadow
// //                     ),
// //                   ],
// //                 ),
// //                 child: FlatButton(
// //                   shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(20.0)),
// //
// //                   onPressed: ()async {
// //                     //something will change
// //                   },
// //                   child: Text("View report",
// //                     textAlign: TextAlign.center,
// //                     style: GoogleFonts.openSans(
// //                       fontSize: 18,
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //
// //             SizedBox(height: 20,),
// //
// //             Padding(
// //               padding: const EdgeInsets.all(10.0),
// //               child: Container(
// //                 padding: const EdgeInsets.all(10),
// //                 width: MediaQuery.of(context).size.width,
// //                 decoration: BoxDecoration(
// //                   color: Colors.grey,
// //                   borderRadius: BorderRadius.circular(20),
// //                 ),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     SizedBox(height: 10,),
// //                     Text("Payment",
// //                       style: TextStyle(
// //                         fontSize: 20,
// //                       ),
// //                     ),
// //                     Padding(
// //                       padding: const EdgeInsets.all(8.0),
// //                       child: Container(
// //                         padding: const EdgeInsets.all(10),
// //                         width: MediaQuery.of(context).size.width,
// //                         decoration: BoxDecoration(
// //                           color: Colors.white,
// //                           borderRadius: BorderRadius.circular(20),
// //                         ),
// //                         child: Column(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           children: const [
// //                             Text("Basic: ",
// //                               style: TextStyle(
// //                                 fontSize: 20,
// //                               ),
// //                             ),
// //                             Text("Conveyance: ",
// //                               style: TextStyle(
// //                                 fontSize: 20,
// //                               ),
// //                             ),
// //                             Text("House Rent:",
// //                               style: TextStyle(
// //                                 fontSize: 20,
// //                               ),
// //                             ),
// //                             Text("LFA:",
// //                               style: TextStyle(
// //                                 fontSize: 20,
// //                               ),
// //                             ),
// //                             Text("Medical Allowance:",
// //                               style: TextStyle(
// //                                 fontSize: 20,
// //                               ),
// //                             ),
// //                             Text("Arrear:",
// //                               style: TextStyle(
// //                                 fontSize: 20,
// //                               ),
// //                             ),
// //
// //                           ],
// //                         ),
// //                       ),
// //
// //
// //
// //                     ),
// //                     SizedBox(height: 10,),
// //                     Text("Deduction",
// //                       style: TextStyle(
// //                         fontSize: 20,
// //                       ),
// //                     ),
// //                     Padding(
// //                       padding: const EdgeInsets.all(8.0),
// //                       child: Container(
// //                         padding: const EdgeInsets.all(10),
// //                         width: MediaQuery.of(context).size.width,
// //                         decoration: BoxDecoration(
// //                           color: Colors.white,
// //                           borderRadius: BorderRadius.circular(20),
// //                         ),
// //                         child: Text("Total deduct: ",
// //                           style: TextStyle(
// //                             fontSize: 20,
// //                           ),
// //                         ),
// //                       ),
// //
// //                     ),
// //                     SizedBox(height: 10,),
// //                     Text("Bank details",
// //                       style: TextStyle(
// //                         fontSize: 20,
// //                       ),
// //                     ),
// //                     Padding(
// //                       padding: const EdgeInsets.all(8.0),
// //                       child: Container(
// //                         padding: const EdgeInsets.all(10),
// //                         width: MediaQuery.of(context).size.width,
// //                         decoration: BoxDecoration(
// //                           color: Colors.white,
// //                           borderRadius: BorderRadius.circular(20),
// //                         ),
// //                         child: Column(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           children: [
// //                             Text("Bank Name: ",
// //                               style: TextStyle(
// //                                 fontSize: 20,
// //                               ),
// //                             ),
// //                             Text("AC Number: ",
// //                               style: TextStyle(
// //                                 fontSize: 20,
// //                               ),
// //                             ),
// //
// //                           ],
// //                         ),
// //                       ),
// //
// //                     ),
// //
// //                     SizedBox(height: 10,),
// //                     Text("Total",
// //                       style: TextStyle(
// //                         fontSize: 20,
// //                       ),
// //                     ),
// //                     Padding(
// //                       padding: const EdgeInsets.all(8.0),
// //                       child: Container(
// //                         padding: const EdgeInsets.all(10),
// //                         width: MediaQuery.of(context).size.width,
// //                         decoration: BoxDecoration(
// //                           color: Colors.white,
// //                           borderRadius: BorderRadius.circular(20),
// //                         ),
// //                         child: Column(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           children: [
// //                             Text("Amount: ",
// //                               style: TextStyle(
// //                                 fontSize: 20,
// //                               ),
// //                             ),
// //                             Text("In Word: ",
// //                               style: TextStyle(
// //                                 fontSize: 20,
// //                               ),
// //                             ),
// //
// //                           ],
// //                         ),
// //                       ),
// //
// //                     ),
// //
// //                   ],
// //                 ),
// //               ),
// //             )
// //
// //
// //
// //           ],
// //
// //         ),
// //
// //       ),
// //     );
// //   }
// // }
//
//
//
// import 'dart:convert';
// import 'dart:ffi';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:aygazhcm/report/payslipreport.dart';
// import 'package:intl/intl.dart';
// import 'package:http/http.dart' as http;
// import '../data_model/payslip/deduct.dart';
// import '../data_model/payslip/payment.dart';
// import '../data_model/payslip/total.dart';
// import 'package:number_to_words/number_to_words.dart';
//
// class Payslip_page extends StatefulWidget {
//   //const Payslip_page({Key? key}) : super(key: key);
//
//   Payslip_page({required this.xname, required this.xacc, required this.xempbank, required this.xstaff});
//   String xname;
//   String xempbank;
//   String xacc;
//   String xstaff;
//
//   @override
//   _Payslip_pageState createState() => _Payslip_pageState();
// }
//
// class _Payslip_pageState extends State<Payslip_page> {
//   String dropdownvalue = '1';
//   String dropdownvalue2 = '2022';
//
//   //String date = DateFormat("yyyy-MM-dd").format(DateTime.now());
//   //DateTime now = DateTime.now();
//   //String date = DateTime.now().toString();
//   String Onlydate = new DateFormat("mm").format(DateTime.now());
//
//   //outtime = '$Onlydate';
//   bool isVisible = false;
//
//   // List of items in our dropdown menu
//   var items = [
//     '1',
//     '2',
//     '3',
//     '4',
//     '5',
//     '6',
//     '7',
//     '8',
//     '9',
//     '10',
//     '11',
//     '12',
//
//     //'2 Months Ago',
//   ];
// var items2 = [
//     '2022',
//     '2021'
//     //'2 Months Ago',
//   ];
//
//   Future<List<PaymentApiModel>>? futurePost;
//
//   // List<PaymentApiModel> futurepost = [];
//
//   Future<List<PaymentApiModel>> fetchPost() async {
//     print("called");
//     var response= await http.post(Uri.parse('http://10.1.2.7/api/payslip/payment.php'),body:
//     jsonEncode(<String, String>{
//       "xstaff":widget.xstaff,
//       "xyear": dropdownvalue2,
//       "xper": dropdownvalue
//     })
//     );
//     if (response.statusCode == 200) {
//       final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
//
//       print(response.body);
//       return parsed.map<PaymentApiModel>((json) => PaymentApiModel.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load album');
//     }
//
//   }
//
//
//   Future<List<DeductApiModel>>? futurePostdeduct;
//
//
//   Future<List<DeductApiModel>> fetchPostdeduct() async {
//     print("called");
//     var response= await http.post(Uri.parse('http://10.1.2.7/api/payslip/deduct.php'),body:
//     jsonEncode(<String, String>{
//       "xstaff":widget.xstaff,
//       "xyear": dropdownvalue2,
//       "xper": dropdownvalue
//     })
//     );
//     if (response.statusCode == 200) {
//       final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
//
//       print(response.body);
//       return parsed.map<DeductApiModel>((json) => DeductApiModel.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load album');
//     }
//
//   }
//
//
//   Future<TotalApiModel>? futurePosttotal;
//
//   late TotalApiModel totalpay;
//   String totalpayment = " ";
//   double payment = 0;
//
//   // Future<String>  gettotal() async {
//   //
//   //   http.Response response = await http.post(Uri.parse('http://10.1.2.7/api/payslip/totalpay.php'),
//   //       body:jsonEncode(<String, String>{
//   //         "xstaff":widget.xstaff,
//   //         "xyear": dropdownvalue2,
//   //         "xper": dropdownvalue
//   //       })
//   //   );
//   //
//   //   print("Body:"+response.body);
//   //   print(response.statusCode);
//   //
//   //   totalpay = totalApiModelFromJson(response.body);
//   //
//   //   totalpayment = totalpay.total;
//   //   payment = double.parse(totalpayment);
//   //
//   //   print("payment"+payment.toString());
//   //   return '';
//   // }
//
//
//   Future<List<TotalApiModel>> fetchPosttotal() async {
//     print("called");
//     var response= await http.post(Uri.parse('http://10.1.2.7/api/payslip/totalpay.php'),body:
//     jsonEncode(<String, String>{
//       "xstaff":widget.xstaff,
//       "xyear": dropdownvalue2,
//       "xper": dropdownvalue
//     })
//     );
//     if (response.statusCode == 200) {
//       final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
//
//       print(response.body);
//       return parsed.map<TotalApiModel>((json) => TotalApiModel.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load album');
//     }
//
//   }
//
//
//
//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   super.initState();
//   //   // fetchPost().whenComplete(()=>futurePost);
//   //   // fetchPostdeduct().whenComplete(()=>futurePostdeduct);
//   //
//   //   futurePost = fetchPost();
//   //   futurePostdeduct = fetchPostdeduct();
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Payslip'),
//         backgroundColor: Color(0xFF8CA6DB),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height / 7.5,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 // color: ispressed ? Colors.white : Colors.grey,
//                 //border: Border.all(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 1,
//                     blurRadius: 5,
//                     offset: Offset(0, 3), // changes position of shadow
//                   ),
//                 ],
//               ),
//               child: Column(
//                 //mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     "Name: ${widget.xname}",
//                     textAlign: TextAlign.justify,
//                     style: GoogleFonts.openSans(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height / 7.5,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 // color: ispressed ? Colors.white : Colors.grey,
//                 //border: Border.all(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 1,
//                     blurRadius: 5,
//                     offset: Offset(0, 3), // changes position of shadow
//                   ),
//                 ],
//               ),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         width: 30,
//                       ),
//                       // FlatButton(
//                       //   onPressed: (){
//                       //     showDialog(context: context, builder: (BuildContext context) {
//                       //       return  AlertDialog(
//                       //         title: const Text("Error"),
//                       //         content:  Column(
//                       //           children: [
//                       //             Text("Date Already Applied",
//                       //               style: TextStyle(
//                       //                 color: Colors.black,
//                       //               ),
//                       //             ),
//                       //           ],
//                       //         ),
//                       //         actions: [
//                       //           FlatButton(
//                       //             color: Color(0xFF8CA6DB),
//                       //             onPressed: (){
//                       //               //Navigator.pop(context);
//                       //               Navigator.pop(context);
//                       //             },
//                       //             child: Text("OK"),
//                       //           ),
//                       //         ],
//                       //         scrollable: true,
//                       //       );
//                       //     });
//                       //   },
//                       //   child: Text(
//                       //     "Month:",
//                       //     style: GoogleFonts.openSans(
//                       //       fontWeight: FontWeight.bold,
//                       //       fontSize: 20,
//                       //       color: Colors.black,
//                       //     ),
//                       //   ),
//                       // ),
//
//
//                       // FlatButton(
//                       //   onPressed: (){
//                       //     showDialog(context: context, builder: (BuildContext context) {
//                       //       return  AlertDialog(
//                       //         title: const Text("Month"),
//                       //         content:   DropdownButton(
//                       //           value: dropdownvalue,
//                       //
//                       //           // Down Arrow Icon
//                       //           icon: const Icon(Icons.keyboard_arrow_down),
//                       //
//                       //           // Array list of items
//                       //           items: items.map((String items) {
//                       //             return DropdownMenuItem(
//                       //               value: items,
//                       //               child: Text(items),
//                       //             );
//                       //           }).toList(),
//                       //           // After selecting the desired option,it will
//                       //           // change button value to selected value
//                       //           onChanged: (String? newValue) {
//                       //             setState(() {
//                       //               dropdownvalue = newValue!;
//                       //             });
//                       //           },
//                       //         ),
//                       //         actions: [
//                       //           FlatButton(
//                       //             color: Color(0xFF8CA6DB),
//                       //             onPressed: (){
//                       //               //Navigator.pop(context);
//                       //               // fetchPost();
//                       //               // fetchPostdeduct();
//                       //               Navigator.pop(context);
//                       //             },
//                       //             child: Text("OK"),
//                       //           ),
//                       //         ],
//                       //         scrollable: true,
//                       //       );
//                       //     });
//                       //   },
//                       //   child: Text(
//                       //     "Month",
//                       //     style: GoogleFonts.openSans(
//                       //       fontWeight: FontWeight.bold,
//                       //       fontSize: 20,
//                       //       color: Colors.black,
//                       //     ),
//                       //   ),
//                       // ),
//
//                       Text(
//                         "Month",
//                         style: GoogleFonts.openSans(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           color: Colors.black,
//                         ),
//                       ),
//
//                       SizedBox(
//                         width: 20,
//                       ),
//
//                       DropdownButton(
//                         value: dropdownvalue,
//
//                         // Down Arrow Icon
//                         icon: const Icon(Icons.keyboard_arrow_down),
//
//                         // Array list of items
//                         items: items.map((String items) {
//                           return DropdownMenuItem(
//                             value: items,
//                             child: Text(items),
//                           );
//                         }).toList(),
//                         // After selecting the desired option,it will
//                         // change button value to selected value
//                         onChanged: (String? newValue) {
//                           setState(() {
//                             dropdownvalue = newValue!;
//                           });
//                         },
//                       ),
//
//                       SizedBox(
//                         width: 20,
//                       ),
//                       //
//                       // FlatButton(
//                       //   onPressed: (){
//                       //     showDialog(context: context, builder: (BuildContext context) {
//                       //       return  AlertDialog(
//                       //         title: const Text("Year"),
//                       //         content:   DropdownButton(
//                       //           value: dropdownvalue2,
//                       //
//                       //           // Down Arrow Icon
//                       //           icon: const Icon(Icons.keyboard_arrow_down),
//                       //
//                       //           // Array list of items
//                       //           items: items2.map((String items) {
//                       //             return DropdownMenuItem(
//                       //               value: items,
//                       //               child: Text(items),
//                       //             );
//                       //           }).toList(),
//                       //           // After selecting the desired option,it will
//                       //           // change button value to selected value
//                       //           onChanged: (String? newValue) {
//                       //             setState(() {
//                       //               dropdownvalue2 = newValue!;
//                       //             });
//                       //           },
//                       //         ),
//                       //         actions: [
//                       //           FlatButton(
//                       //             color: Color(0xFF8CA6DB),
//                       //             onPressed: (){
//                       //               //Navigator.pop(context);
//                       //               fetchPost();
//                       //               fetchPostdeduct();
//                       //               Navigator.pop(context);
//                       //             },
//                       //             child: Text("OK"),
//                       //           ),
//                       //         ],
//                       //         scrollable: true,
//                       //       );
//                       //     });
//                       //   },
//                       //   child: Text(
//                       //     "Year",
//                       //     style: GoogleFonts.openSans(
//                       //       fontWeight: FontWeight.bold,
//                       //       fontSize: 20,
//                       //       color: Colors.black,
//                       //     ),
//                       //   ),
//                       // ),
//
//                       Text(
//                         "Year",
//                         style: GoogleFonts.openSans(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           color: Colors.black,
//                         ),
//                       ),
//
//                       SizedBox(
//                         width: 20,
//                       ),
//
//                       DropdownButton(
//                         value: dropdownvalue2,
//
//                         // Down Arrow Icon
//                         icon: const Icon(Icons.keyboard_arrow_down),
//
//                         // Array list of items
//                         items: items2.map((String items) {
//                           return DropdownMenuItem(
//                             value: items,
//                             child: Text(items),
//                           );
//                         }).toList(),
//                         // After selecting the desired option,it will
//                         // change button value to selected value
//                         onChanged: (String? newValue) {
//                           setState(() {
//                             dropdownvalue2 = newValue!;
//                           });
//                         },
//                       ),
//
//
//
//
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: Container(
//                 height: 40,
//                 width: MediaQuery.of(context).size.width / 1.2,
//                 decoration: BoxDecoration(
//                   color: Color(0xff8CA6DB),
//                   border: Border.all(color: Colors.grey),
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 1,
//                       blurRadius: 5,
//                       offset: Offset(0, 3), // changes position of shadow
//                     ),
//                   ],
//                 ),
//                 child: FlatButton(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20.0)),
//                   onPressed: () async {
//                     //something will change
//                     setState(() {
//                       isVisible = !isVisible;
//                       fetchPost();
//                       fetchPostdeduct();
//                       fetchPosttotal();
//
//                       //gettotal();
//                       print(dropdownvalue);
//                       print(dropdownvalue2);
//
//                       //Navigator.push(context, MaterialPageRoute(builder: (context)=>Payslipreport(paymentApiModel: paymentApiModel)))
//                     });
//                   },
//                   child: Text(
//                     isVisible ? "Hide Report" : "View Report",
//                     textAlign: TextAlign.center,
//                     style: GoogleFonts.openSans(
//                       fontSize: 18,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Visibility(
//               visible: isVisible,
//                 child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Container(
//                     padding: const EdgeInsets.all(10),
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                       color: Colors.white30,
//                       borderRadius: BorderRadius.circular(20),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 1,
//                           //blurRadius: 5,
//                           offset: Offset(0, 3), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           "Bank details",
//                           //textAlign: TextAlign.center,
//                           style: GoogleFonts.openSans(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             padding: const EdgeInsets.all(10),
//                             width: MediaQuery.of(context).size.width,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Bank Name: ${widget.xempbank.toString()}",
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                   ),
//                                 ),
//                                 Text(
//                                   "AC Number: ${widget.xacc.toString()}",
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           "Payment",
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.openSans(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                           ),
//                         ),
//                         // Padding(
//                         //   padding: const EdgeInsets.all(8.0),
//                         //   child: Container(
//                         //     padding: const EdgeInsets.all(10),
//                         //     width: MediaQuery.of(context).size.width,
//                         //     decoration: BoxDecoration(
//                         //       color: Colors.white,
//                         //       borderRadius: BorderRadius.circular(20),
//                         //     ),
//                         //     child: Column(
//                         //       crossAxisAlignment: CrossAxisAlignment.start,
//                         //       children: [
//                         //         Text(
//                         //           "Basic: ",
//                         //           style: TextStyle(
//                         //             fontSize: 20,
//                         //           ),
//                         //         ),
//                         //         Text(
//                         //           "Conveyance: ",
//                         //           style: TextStyle(
//                         //             fontSize: 20,
//                         //           ),
//                         //         ),
//                         //         Text(
//                         //           "House Rent:",
//                         //           style: TextStyle(
//                         //             fontSize: 20,
//                         //           ),
//                         //         ),
//                         //         Text(
//                         //           "LFA:",
//                         //           style: TextStyle(
//                         //             fontSize: 20,
//                         //           ),
//                         //         ),
//                         //         Text(
//                         //           "Medical Allowance:",
//                         //           style: TextStyle(
//                         //             fontSize: 20,
//                         //           ),
//                         //         ),
//                         //         Text(
//                         //           "Arrear:",
//                         //           style: TextStyle(
//                         //             fontSize: 20,
//                         //           ),
//                         //         ),
//                         //       ],
//                         //     ),
//                         //   ),
//                         // ),
//
//                         SizedBox(height: 10,),
//
//                         FutureBuilder<List<PaymentApiModel>>(
//                           future:  fetchPost(),
//                           builder: (context, snapshot) {
//                             if (snapshot.hasData) {
//                               return Container(
//                                 padding: const EdgeInsets.all(10),
//                                 width: MediaQuery.of(context).size.width,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                                 child: ListView.builder(
//                                   shrinkWrap: true,
//                                   itemCount: snapshot.data!.length,
//                                   itemBuilder: (_, index) => Container(
//                                     child: Column(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Text(
//                                             "${snapshot.data![index].xtype} : ${snapshot.data![index].xamount}",
//                                             style: TextStyle(
//                                               fontSize: 20,
//                                             ),
//                                           ),
//                                         ),
//                                         SizedBox(height: 5,)
//                                       ],
//                                     ),
//
//                                   ),
//                                 ),
//                               );
//                             } else {
//                               return Center(
//                                 child: Text("Loading.."),
//                               );
//                             }
//                           },
//                         ),
//
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           "Deduction",
//                           style: GoogleFonts.openSans(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                           ),
//                         ),
//                         // Padding(
//                         //   padding: const EdgeInsets.all(8.0),
//                         //   child: Container(
//                         //     padding: const EdgeInsets.all(10),
//                         //     width: MediaQuery.of(context).size.width,
//                         //     decoration: BoxDecoration(
//                         //       color: Colors.white,
//                         //       borderRadius: BorderRadius.circular(20),
//                         //     ),
//                         //     child: Text(
//                         //       "Total deduct: ",
//                         //       style: TextStyle(
//                         //         fontSize: 20,
//                         //       ),
//                         //     ),
//                         //   ),
//                         // ),
//
//                         FutureBuilder<List<DeductApiModel>>(
//                           future:  fetchPostdeduct(),
//                           builder: (context, snapshot) {
//                             if (snapshot.hasData) {
//                               return Container(
//                                 padding: const EdgeInsets.all(10),
//                                 width: MediaQuery.of(context).size.width,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                                 child: ListView.builder(
//                                   shrinkWrap: true,
//                                   itemCount: snapshot.data!.length,
//                                   itemBuilder: (_, index) => Container(
//                                     child: Column(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Text(
//                                             "${snapshot.data![index].xtype} : ${snapshot.data![index].xamount}",
//                                             style: TextStyle(
//                                               fontSize: 20,
//                                             ),
//                                           ),
//                                         ),
//                                         SizedBox(height: 5,)
//                                       ],
//                                     ),
//
//                                   ),
//                                 ),
//                               );
//                             } else {
//                               return Center(
//                                 child: Text("Loading.."),
//                               );
//                             }
//                           },
//                         ),
//
//                         SizedBox(
//                           height: 10,
//                         ),
//
//
//
//                         Text(
//                           "Total",
//                           style: GoogleFonts.openSans(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                           ),
//                         ),
//
//                         FutureBuilder<List<TotalApiModel>>(
//                           future:  fetchPosttotal(),
//                           builder: (context, snapshot) {
//                             if (snapshot.hasData) {
//                               return Container(
//                                 padding: const EdgeInsets.all(10),
//                                 width: MediaQuery.of(context).size.width,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                                 child: ListView.builder(
//                                   shrinkWrap: true,
//                                   itemCount: snapshot.data!.length,
//                                   itemBuilder: (_, index) => Container(
//                                     child: Column(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Container(
//                                             padding: const EdgeInsets.all(10),
//                                             width: MediaQuery.of(context).size.width,
//                                             decoration: BoxDecoration(
//                                               color: Colors.white,
//                                               borderRadius: BorderRadius.circular(20),
//                                             ),
//                                             child: Column(
//                                               crossAxisAlignment: CrossAxisAlignment.start,
//                                               children: [
//                                                 Text(
//                                                   "Amount: ${snapshot.data![index].total ?? "0"}",
//                                                   style: TextStyle(
//                                                     fontSize: 20,
//                                                   ),
//                                                 ),
//                                                 Text(
//                                                   "In Word: ${NumberToWord().convert('en-in',int.parse((snapshot.data![index].total ?? "0"))).toUpperCase()} TK ONLY",
//                                                   style: TextStyle(
//                                                     fontSize: 20,
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         SizedBox(height: 5,)
//                                       ],
//                                     ),
//
//                                   ),
//                                 ),
//                               );
//                             } else {
//                               return Center(
//                                 child: Text("Loading.."),
//                               );
//                             }
//                           },
//                         ),
//
//
//                         // Padding(
//                         //   padding: const EdgeInsets.all(8.0),
//                         //   child: Container(
//                         //     padding: const EdgeInsets.all(10),
//                         //     width: MediaQuery.of(context).size.width,
//                         //     decoration: BoxDecoration(
//                         //       color: Colors.white,
//                         //       borderRadius: BorderRadius.circular(20),
//                         //     ),
//                         //     child: Column(
//                         //       crossAxisAlignment: CrossAxisAlignment.start,
//                         //       children: [
//                         //         Text(
//                         //           "Amount: $payment",
//                         //           style: TextStyle(
//                         //             fontSize: 20,
//                         //           ),
//                         //         ),
//                         //         Text(
//                         //           "In Word: ${NumberToWord().convert('en-in',payment.toInt()).toUpperCase()}",
//                         //           style: TextStyle(
//                         //             fontSize: 20,
//                         //           ),
//                         //         ),
//                         //       ],
//                         //     ),
//                         //   ),
//                         // ),
//
//                       ],
//                     ),
//                   ),
//                 )
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Payslip_page extends StatefulWidget {
  const Payslip_page({Key? key}) : super(key: key);

  // Payslip_page(
  //     {required this.xname,
  //       required this.xacc,
  //       required this.xempbank,
  //       required this.xstaff});
  // dynamic xname;
  // dynamic xempbank;
  // dynamic xacc;
  // dynamic xstaff;

  @override
  _Payslip_pageState createState() => _Payslip_pageState();
}

class _Payslip_pageState extends State<Payslip_page> {
  String dropdownvalue = '1';
  String dropdownvalue2 = '2022';

  //String date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  //DateTime now = DateTime.now();
  //String date = DateTime.now().toString();
  // String Onlydate = new DateFormat("mm").format(DateTime.now());
  //
  // //outtime = '$Onlydate';
  // bool isVisible = false;
  //
  // // List of items in our dropdown menu
  // var items = [
  //   '1',
  //   '2',
  //   '3',
  //   '4',
  //   '5',
  //   '6',
  //   '7',
  //   '8',
  //   '9',
  //   '10',
  //   '11',
  //   '12',
  //
  //   //'2 Months Ago',
  // ];
  // var items2 = [
  //   '2022',
  //   '2021'
  //   //'2 Months Ago',
  // ];
  //
  // Future<List<PaymentApiModel>>? futurePost;
  //
  // // List<PaymentApiModel> futurepost = [];
  //
  // Future<List<PaymentApiModel>> fetchPost() async {
  //   print("called");
  //   var response = await http.post(
  //       Uri.parse('http://10.1.2.7/api/payslip/payment.php'),
  //       body: jsonEncode(<String, String>{
  //         "xstaff": widget.xstaff,
  //         "xyear": dropdownvalue2,
  //         "xper": dropdownvalue
  //       }));
  //   if (response.statusCode == 200) {
  //     final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
  //
  //     print(response.body);
  //     return parsed
  //         .map<PaymentApiModel>((json) => PaymentApiModel.fromJson(json))
  //         .toList();
  //   } else {
  //     throw Exception('Failed to load album');
  //   }
  // }
  //
  // Future<List<DeductApiModel>>? futurePostdeduct;
  //
  // Future<List<DeductApiModel>> fetchPostdeduct() async {
  //   print("called");
  //   var response = await http.post(
  //       Uri.parse('http://10.1.2.7/api/payslip/deduct.php'),
  //       body: jsonEncode(<String, String>{
  //         "xstaff": widget.xstaff,
  //         "xyear": dropdownvalue2,
  //         "xper": dropdownvalue
  //       }));
  //   if (response.statusCode == 200) {
  //     final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
  //
  //     print(response.body);
  //     return parsed
  //         .map<DeductApiModel>((json) => DeductApiModel.fromJson(json))
  //         .toList();
  //   } else {
  //     throw Exception('Failed to load album');
  //   }
  // }
  //
  // Future<TotalApiModel>? futurePosttotal;
  //
  // late TotalApiModel totalpay;
  // String totalpayment = " ";
  // double payment = 0;
  //
  // // Future<String>  gettotal() async {
  // //
  // //   http.Response response = await http.post(Uri.parse('http://10.1.2.7/api/payslip/totalpay.php'),
  // //       body:jsonEncode(<String, String>{
  // //         "xstaff":widget.xstaff,
  // //         "xyear": dropdownvalue2,
  // //         "xper": dropdownvalue
  // //       })
  // //   );
  // //
  // //   print("Body:"+response.body);
  // //   print(response.statusCode);
  // //
  // //   totalpay = totalApiModelFromJson(response.body);
  // //
  // //   totalpayment = totalpay.total;
  // //   payment = double.parse(totalpayment);
  // //
  // //   print("payment"+payment.toString());
  // //   return '';
  // // }
  //
  // Future<List<TotalApiModel>> fetchPosttotal() async {
  //   print("called");
  //   var response = await http.post(
  //       Uri.parse('http://10.1.2.7/api/payslip/totalpay.php'),
  //       body: jsonEncode(<String, String>{
  //         "xstaff": widget.xstaff,
  //         "xyear": dropdownvalue2,
  //         "xper": dropdownvalue
  //       }));
  //   if (response.statusCode == 200) {
  //     final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
  //
  //     print(response.body);
  //     return parsed
  //         .map<TotalApiModel>((json) => TotalApiModel.fromJson(json))
  //         .toList();
  //   } else {
  //     throw Exception('Failed to load album');
  //   }
  // }
  //
  // // @override
  // // void initState() {
  // //   // TODO: implement initState
  // //   super.initState();
  // //   // fetchPost().whenComplete(()=>futurePost);
  // //   // fetchPostdeduct().whenComplete(()=>futurePostdeduct);
  // //
  // //   futurePost = fetchPost();
  // //   futurePostdeduct = fetchPostdeduct();
  // // }

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
            "Payslip",
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
          child: Column(
            children: [
              // SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   height: MediaQuery.of(context).size.height / 7.5,
              //   width: MediaQuery.of(context).size.width,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     // color: ispressed ? Colors.white : Colors.grey,
              //     //border: Border.all(color: Colors.grey),
              //     borderRadius: BorderRadius.circular(20),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.5),
              //         spreadRadius: 1,
              //         blurRadius: 5,
              //         offset: Offset(0, 3), // changes position of shadow
              //       ),
              //     ],
              //   ),
              //   child: Column(
              //     //mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       SizedBox(
              //         height: 20,
              //       ),
              //       Text(
              //         "Name: ${widget.xname}",
              //         textAlign: TextAlign.justify,
              //         style: GoogleFonts.bakbakOne(
              //
              //           fontSize: 18,
              //           color: Colors.black,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   height: MediaQuery.of(context).size.height / 7.5,
              //   width: MediaQuery.of(context).size.width,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     // color: ispressed ? Colors.white : Colors.grey,
              //     //border: Border.all(color: Colors.grey),
              //     borderRadius: BorderRadius.circular(20),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.5),
              //         spreadRadius: 1,
              //         blurRadius: 5,
              //         offset: Offset(0, 3), // changes position of shadow
              //       ),
              //     ],
              //   ),
              //   child: Column(
              //     children: [
              //       SizedBox(
              //         height: 20,
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           SizedBox(
              //             width: 30,
              //           ),
              //           // FlatButton(
              //           //   onPressed: (){
              //           //     showDialog(context: context, builder: (BuildContext context) {
              //           //       return  AlertDialog(
              //           //         title: const Text("Error"),
              //           //         content:  Column(
              //           //           children: [
              //           //             Text("Date Already Applied",
              //           //               style: TextStyle(
              //           //                 color: Colors.black,
              //           //               ),
              //           //             ),
              //           //           ],
              //           //         ),
              //           //         actions: [
              //           //           FlatButton(
              //           //             color: Color(0xFF8CA6DB),
              //           //             onPressed: (){
              //           //               //Navigator.pop(context);
              //           //               Navigator.pop(context);
              //           //             },
              //           //             child: Text("OK"),
              //           //           ),
              //           //         ],
              //           //         scrollable: true,
              //           //       );
              //           //     });
              //           //   },
              //           //   child: Text(
              //           //     "Month:",
              //           //     style: GoogleFonts.openSans(
              //           //       fontWeight: FontWeight.bold,
              //           //       fontSize: 18,
              //           //       color: Colors.black,
              //           //     ),
              //           //   ),
              //           // ),
              //
              //           // FlatButton(
              //           //   onPressed: (){
              //           //     showDialog(context: context, builder: (BuildContext context) {
              //           //       return  AlertDialog(
              //           //         title: const Text("Month"),
              //           //         content:   DropdownButton(
              //           //           value: dropdownvalue,
              //           //
              //           //           // Down Arrow Icon
              //           //           icon: const Icon(Icons.keyboard_arrow_down),
              //           //
              //           //           // Array list of items
              //           //           items: items.map((String items) {
              //           //             return DropdownMenuItem(
              //           //               value: items,
              //           //               child: Text(items),
              //           //             );
              //           //           }).toList(),
              //           //           // After selecting the desired option,it will
              //           //           // change button value to selected value
              //           //           onChanged: (String? newValue) {
              //           //             setState(() {
              //           //               dropdownvalue = newValue!;
              //           //             });
              //           //           },
              //           //         ),
              //           //         actions: [
              //           //           FlatButton(
              //           //             color: Color(0xFF8CA6DB),
              //           //             onPressed: (){
              //           //               //Navigator.pop(context);
              //           //               // fetchPost();
              //           //               // fetchPostdeduct();
              //           //               Navigator.pop(context);
              //           //             },
              //           //             child: Text("OK"),
              //           //           ),
              //           //         ],
              //           //         scrollable: true,
              //           //       );
              //           //     });
              //           //   },
              //           //   child: Text(
              //           //     "Month",
              //           //     style: GoogleFonts.openSans(
              //           //       fontWeight: FontWeight.bold,
              //           //       fontSize: 18,
              //           //       color: Colors.black,
              //           //     ),
              //           //   ),
              //           // ),
              //
              //           Text(
              //             "Month",
              //             style: GoogleFonts.bakbakOne(
              //              //fontWeight: FontWeight.bold,
              //               fontSize: 18,
              //               color: Colors.black,
              //             ),
              //           ),
              //
              //           SizedBox(
              //             width: 20,
              //           ),
              //
              //           DropdownButton(
              //             value: dropdownvalue,
              //
              //             // Down Arrow Icon
              //             icon: const Icon(Icons.keyboard_arrow_down),
              //
              //             // Array list of items
              //             items: items.map((String items) {
              //               return DropdownMenuItem(
              //                 value: items,
              //                 child: Text(items,
              //                   style: GoogleFonts.bakbakOne(
              //                     //fontWeight: FontWeight.bold,
              //                     fontSize: 18,
              //                     color: Colors.black,
              //                   ),
              //                 ),
              //               );
              //             }).toList(),
              //             // After selecting the desired option,it will
              //             // change button value to selected value
              //             onChanged: (String? newValue) {
              //               setState(() {
              //                 dropdownvalue = newValue!;
              //               });
              //             },
              //           ),
              //
              //           SizedBox(
              //             width: 20,
              //           ),
              //           //
              //           // FlatButton(
              //           //   onPressed: (){
              //           //     showDialog(context: context, builder: (BuildContext context) {
              //           //       return  AlertDialog(
              //           //         title: const Text("Year"),
              //           //         content:   DropdownButton(
              //           //           value: dropdownvalue2,
              //           //
              //           //           // Down Arrow Icon
              //           //           icon: const Icon(Icons.keyboard_arrow_down),
              //           //
              //           //           // Array list of items
              //           //           items: items2.map((String items) {
              //           //             return DropdownMenuItem(
              //           //               value: items,
              //           //               child: Text(items),
              //           //             );
              //           //           }).toList(),
              //           //           // After selecting the desired option,it will
              //           //           // change button value to selected value
              //           //           onChanged: (String? newValue) {
              //           //             setState(() {
              //           //               dropdownvalue2 = newValue!;
              //           //             });
              //           //           },
              //           //         ),
              //           //         actions: [
              //           //           FlatButton(
              //           //             color: Color(0xFF8CA6DB),
              //           //             onPressed: (){
              //           //               //Navigator.pop(context);
              //           //               fetchPost();
              //           //               fetchPostdeduct();
              //           //               Navigator.pop(context);
              //           //             },
              //           //             child: Text("OK"),
              //           //           ),
              //           //         ],
              //           //         scrollable: true,
              //           //       );
              //           //     });
              //           //   },
              //           //   child: Text(
              //           //     "Year",
              //           //     style: GoogleFonts.openSans(
              //           //       fontWeight: FontWeight.bold,
              //           //       fontSize: 18,
              //           //       color: Colors.black,
              //           //     ),
              //           //   ),
              //           // ),
              //
              //           Text(
              //             "Year",
              //             style: GoogleFonts.bakbakOne(
              //               //fontWeight: FontWeight.bold,
              //               fontSize: 18,
              //               color: Colors.black,
              //             ),
              //           ),
              //
              //           SizedBox(
              //             width: 20,
              //           ),
              //
              //           DropdownButton(
              //             value: dropdownvalue2,
              //
              //             // Down Arrow Icon
              //             icon: const Icon(Icons.keyboard_arrow_down),
              //
              //             // Array list of items
              //             items: items2.map((String items) {
              //               return DropdownMenuItem(
              //                 value: items,
              //                 child: Text(items,
              //                   style: GoogleFonts.bakbakOne(
              //                     //fontWeight: FontWeight.bold,
              //                     fontSize: 18,
              //                     color: Colors.black,
              //                   ),
              //                 ),
              //               );
              //             }).toList(),
              //             // After selecting the desired option,it will
              //             // change button value to selected value
              //             onChanged: (String? newValue) {
              //               setState(() {
              //                 dropdownvalue2 = newValue!;
              //               });
              //             },
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Center(
              //   child: Container(
              //     height: 40,
              //     width: MediaQuery.of(context).size.width / 1.2,
              //     decoration: BoxDecoration(
              //       color: Color(0xff064A76),
              //       border: Border.all(color: Colors.grey),
              //       borderRadius: BorderRadius.circular(10),
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
              //       onPressed: () async {
              //         //something will change
              //         setState(() {
              //           isVisible = !isVisible;
              //           fetchPost();
              //           fetchPostdeduct();
              //           fetchPosttotal();
              //
              //           //gettotal();
              //           print(dropdownvalue);
              //           print(dropdownvalue2);
              //
              //           //Navigator.push(context, MaterialPageRoute(builder: (context)=>Payslipreport(paymentApiModel: paymentApiModel)))
              //         });
              //       },
              //       child: Text(
              //         isVisible ? "Hide Report" : "View Report",
              //         textAlign: TextAlign.center,
              //         style: GoogleFonts.openSans(
              //           fontSize: 18,
              //           color: Colors.white,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Visibility(
              //     visible: isVisible,
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: Container(
              //         padding: const EdgeInsets.all(10),
              //         width: MediaQuery.of(context).size.width,
              //         decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.circular(20),
              //           boxShadow: [
              //             BoxShadow(
              //               color: Colors.lightBlueAccent.withOpacity(0.5),
              //               spreadRadius: 1,
              //               //blurRadius: 5,
              //               offset: Offset(0, 3), // changes position of shadow
              //             ),
              //           ],
              //         ),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.center,
              //           children: [
              //             Text(
              //               "Bank details",
              //               //textAlign: TextAlign.center,
              //               style: GoogleFonts.bakbakOne(
              //                 //fontWeight: FontWeight.bold,
              //                 fontSize: 18,
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: Container(
              //                 padding: const EdgeInsets.all(10),
              //                 width: MediaQuery.of(context).size.width,
              //                 decoration: BoxDecoration(
              //                   color: Colors.white,
              //                   borderRadius: BorderRadius.circular(20),
              //                 ),
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text(
              //                       "Bank Name: ${widget.xempbank.toString()}",
              //                       style: GoogleFonts.bakbakOne(
              //                         fontSize: 18,
              //                       ),
              //                     ),
              //                     Text(
              //                       "AC Number: ${widget.xacc.toString()}",
              //                       style: GoogleFonts.bakbakOne(
              //                         fontSize: 18,
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ),
              //             SizedBox(
              //               height: 10,
              //             ),
              //
              //             FutureBuilder<List<TotalApiModel>>(
              //               future: fetchPosttotal(),
              //               builder: (context, snapshot) {
              //                 if (snapshot.hasData) {
              //                   return Container(
              //                     padding: const EdgeInsets.all(10),
              //                     width: MediaQuery.of(context).size.width,
              //                     decoration: BoxDecoration(
              //                       color: Colors.white,
              //                       borderRadius: BorderRadius.circular(20),
              //                     ),
              //                     child: ListView.builder(
              //                       physics: NeverScrollableScrollPhysics(),
              //                       shrinkWrap: true,
              //                       itemCount: snapshot.data!.length,
              //                       itemBuilder: (_, index) => Container(
              //                         child: SizedBox(
              //                           width: 130.0,
              //                           height: 150.0,
              //                           child: CustomPaint(
              //                               painter: CircleProgress(
              //                                 progress: 100,
              //                                 startColor: Colors.blue,
              //                                 endColor: Colors.red,
              //                                 width: 8.0,
              //                               ),
              //                               child: Center(
              //                                 child: Container(
              //                                   padding: EdgeInsets.only(top: 10,left: 10),
              //                                   child: Text(
              //                                       "${snapshot.data![index].total ?? "0"} \n  BDT",
              //                                       style: GoogleFonts.bakbakOne(
              //                                         color: Colors.blue[900],
              //                                           fontSize: 30
              //                                       )
              //                                   ),
              //                                 ),
              //                               )
              //                           ),
              //                         ),
              //                       ),
              //                     ),
              //                   );
              //                 } else {
              //                   return Center(
              //                     child: Text("Loading.."),
              //                   );
              //                 }
              //               },
              //             ),
              //
              //
              //             // Container(
              //             //   width: 150,
              //             //   height: 150,
              //             //   color: Colors.blue,
              //             //   child: Stack(
              //             //     children: [ShaderMask(shaderCallback: (rect){
              //             //       return SweepGradient(
              //             //         startAngle: 0.0,
              //             //         endAngle: two_pi,
              //             //         stops: [0.5,0.5],
              //             //         center: Allignment.center,
              //             //           colors: [Colors.blue, Colors.transparent.withAlpha(55)]
              //             //       ),
              //             //       createShader(rect);
              //             //     }
              //             //     )],
              //             //   ),
              //             //   decoration: BoxDecoration(
              //             //     shape: BoxShape.circle,
              //             //     color: Colors.black,
              //             //   ),
              //             //
              //             // ),
              //
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Text(
              //               "Payment",
              //               textAlign: TextAlign.center,
              //               style: GoogleFonts.bakbakOne(
              //                 //fontWeight: FontWeight.bold,
              //                 fontSize: 22,
              //               ),
              //             ),
              //             // Padding(
              //             //   padding: const EdgeInsets.all(8.0),
              //             //   child: Container(
              //             //     padding: const EdgeInsets.all(10),
              //             //     width: MediaQuery.of(context).size.width,
              //             //     decoration: BoxDecoration(
              //             //       color: Colors.white,
              //             //       borderRadius: BorderRadius.circular(20),
              //             //     ),
              //             //     child: Column(
              //             //       crossAxisAlignment: CrossAxisAlignment.start,
              //             //       children: [
              //             //         Text(
              //             //           "Basic: ",
              //             //           style: TextStyle(
              //             //             fontSize: 18,
              //             //           ),
              //             //         ),
              //             //         Text(
              //             //           "Conveyance: ",
              //             //           "Conveyance: ",
              //             //           style: TextStyle(
              //             //             fontSize: 18,
              //             //           ),
              //             //         ),
              //             //         Text(
              //             //           "House Rent:",
              //             //           style: TextStyle(
              //             //             fontSize: 18,
              //             //           ),
              //             //         ),
              //             //         Text(
              //             //           "LFA:",
              //             //           style: TextStyle(
              //             //             fontSize: 18,
              //             //           ),
              //             //         ),
              //             //         Text(
              //             //           "Medical Allowance:",
              //             //           style: TextStyle(
              //             //             fontSize: 18,
              //             //           ),
              //             //         ),
              //             //         Text(
              //             //           "Arrear:",
              //             //           style: TextStyle(
              //             //             fontSize: 18,
              //             //           ),
              //             //         ),
              //             //       ],
              //             //     ),
              //             //   ),
              //             // ),
              //
              //             SizedBox(
              //               height: 10,
              //             ),
              //
              //             FutureBuilder<List<PaymentApiModel>>(
              //               future: fetchPost(),
              //               builder: (context, snapshot) {
              //                 if (snapshot.hasData) {
              //                   return Container(
              //                     padding: const EdgeInsets.all(10),
              //                     width: MediaQuery.of(context).size.width,
              //                     decoration: BoxDecoration(
              //                       color: Colors.white,
              //                       borderRadius: BorderRadius.circular(20),
              //                     ),
              //                     child: ListView.builder(
              //                       physics: NeverScrollableScrollPhysics(),
              //                       shrinkWrap: true,
              //                       itemCount: snapshot.data!.length,
              //                       itemBuilder: (_, index) => Container(
              //                         child: Column(
              //                           children: [
              //                             Padding(
              //                               padding: const EdgeInsets.all(8.0),
              //                               child: Row(
              //                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                                 children: [
              //                                   Expanded(
              //                                     flex: 1,
              //                                     child: Text(
              //                                       "${snapshot.data![index].xtype}",
              //                                       style: GoogleFonts.bakbakOne(
              //
              //                                         fontSize: 18,
              //                                       ),
              //                                     ),
              //                                   ),
              //                                   // Expanded(
              //                                   //   child: Text(
              //                                   //     " : ",
              //                                   //     style: GoogleFonts.bakbakOne(
              //                                   //
              //                                   //       fontSize: 18,
              //                                   //     ),
              //                                   //   ),
              //                                   // ),
              //                                   Expanded(
              //                                     child: Text(
              //                                       "${snapshot.data![index].xamount}",
              //                                       textAlign: TextAlign.right,
              //                                       style: GoogleFonts.bakbakOne(
              //
              //                                         fontSize: 18,
              //                                       ),
              //                                     ),
              //                                   ),
              //
              //                                 ],
              //                               ),
              //                             ),
              //                             SizedBox(
              //                               height: 5,
              //                             )
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   );
              //                 } else {
              //                   return Center(
              //                     child: Text("Loading.."),
              //                   );
              //                 }
              //               },
              //             ),
              //
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Text(
              //               "Deduction",
              //               style: GoogleFonts.bakbakOne(
              //                 //fontWeight: FontWeight.bold,
              //                 fontSize: 22,
              //               ),
              //             ),
              //             // Padding(
              //             //   padding: const EdgeInsets.all(8.0),
              //             //   child: Container(
              //             //     padding: const EdgeInsets.all(10),
              //             //     width: MediaQuery.of(context).size.width,
              //             //     decoration: BoxDecoration(
              //             //       color: Colors.white,
              //             //       borderRadius: BorderRadius.circular(20),
              //             //     ),
              //             //     child: Text(
              //             //       "Total deduct: ",
              //             //       style: TextStyle(
              //             //         fontSize: 18,
              //             //       ),
              //             //     ),
              //             //   ),
              //             // ),
              //
              //             FutureBuilder<List<DeductApiModel>>(
              //               future: fetchPostdeduct(),
              //               builder: (context, snapshot) {
              //                 if (snapshot.hasData) {
              //                   return Container(
              //                     padding: const EdgeInsets.all(10),
              //                     width: MediaQuery.of(context).size.width,
              //                     decoration: BoxDecoration(
              //                       color: Colors.white,
              //                       borderRadius: BorderRadius.circular(20),
              //                     ),
              //                     child: ListView.builder(
              //                       physics: NeverScrollableScrollPhysics(),
              //                       shrinkWrap: true,
              //                       itemCount: snapshot.data!.length,
              //                       itemBuilder: (_, index) => Container(
              //                         child: Column(
              //                           children: [
              //                             Padding(
              //                               padding: const EdgeInsets.all(8.0),
              //                               child: Row(
              //                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //                                 children: [
              //                                   Expanded(
              //                                     flex: 2,
              //                                     child: Text(
              //                                       "${snapshot.data![index].xtype}",
              //                                       style: GoogleFonts.bakbakOne(
              //                                         fontSize: 18,
              //                                       ),
              //                                     ),
              //                                   ),
              //                                   // Expanded(
              //                                   //   flex: 2,
              //                                   //   child: Text(
              //                                   //     ": ",
              //                                   //     style: GoogleFonts.bakbakOne(
              //                                   //       fontSize: 18,
              //                                   //     ),
              //                                   //   ),
              //                                   // ),
              //                                   Expanded(
              //                                     flex: 2,
              //                                     child: Text(
              //                                       "${snapshot.data![index].xamount}",
              //                                       textAlign: TextAlign.right,
              //                                       style: GoogleFonts.bakbakOne(
              //                                         fontSize: 18,
              //                                       ),
              //                                     ),
              //                                   ),
              //
              //                                 ],
              //                               ),
              //                             ),
              //                             SizedBox(
              //                               height: 5,
              //                             )
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   );
              //                 } else {
              //                   return Center(
              //                     child: Text("Loading.."),
              //                   );
              //                 }
              //               },
              //             ),
              //
              //             SizedBox(
              //               height: 10,
              //             ),
              //
              //             // Text(
              //             //   "Total",
              //             //   style: GoogleFonts.bakbakOne(
              //             //     //fontWeight: FontWeight.bold,
              //             //     fontSize: 18,
              //             //   ),
              //             // ),
              //
              //           ],
              //         ),
              //       ),
              //     )),
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
    );
  }
}

class CircleProgress extends CustomPainter {
  const CircleProgress({
    required this.progress,
    required this.startColor,
    required this.endColor,
    required this.width,
  })  : assert(progress != null),
        assert(startColor != null),
        assert(endColor != null),
        assert(width != null),
        super();

  final double progress;
  final Color startColor;
  final Color endColor;
  final double width;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = new Rect.fromLTWH(0.0, 0.0, size.width, size.height);
    final gradient = new SweepGradient(
      startAngle: 3 * pi / 2,
      endAngle: 7 * pi / 2,
      tileMode: TileMode.repeated,
      colors: [startColor, endColor],
    );

    final paint = new Paint()
      ..shader = gradient.createShader(rect)
      ..strokeCap = StrokeCap.butt // StrokeCap.round is not recommended.
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    final center = new Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2) - (width / 2);
    final startAngle = -pi / 2;
    final sweepAngle = 2 * pi * (progress / 100);
    canvas.drawArc(new Rect.fromCircle(center: center, radius: radius),
        startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
