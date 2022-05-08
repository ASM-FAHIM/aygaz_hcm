import 'dart:convert';
import 'dart:io' show Platform, exit;

import 'package:aygazhcm/data_model/loginModel.dart';
import 'package:aygazhcm/data_model/promotion.dart';
import 'package:aygazhcm/screen/zid_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import 'data_model/xyearperdate.dart';

class Homepage extends StatefulWidget {
  // const Homepage({Key? key}) : super(key: key);

  LoginModel loginModel;

  Homepage({required this.loginModel});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  DateTime now = DateTime.now();
  DateTime notificationTime = DateTime.now();
  String intime = '';
  String outtime = '';
  bool pressAttention = false;
  bool pressAttention1 = false;
  late String _currentAddress = " ";
  late String _currentAddressout = " ";

  Future<List<PromotionModel>>? futurePost;

  Future<void> getLocationin() async {
    Position position = await Geolocator.getCurrentPosition();
    print(position.latitude);
    print(position.longitude);

    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      Placemark place = placemarks[0];

      setState(() {
        _currentAddress =
            "${place.locality}, ${place.postalCode}, ${place.country}";
        //_currentAddressout = "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
    //print(_currentAddress);
  }

  late XbalanceModel leave_remain1;
  String xbalance = " ";

  Future<String> getAPIDATA() async {
    http.Response response = await http.post(
        Uri.parse('http://172.20.20.69/api/annualleave.php'),
        body: jsonEncode(<String, String>{
          "xstaff": widget.loginModel.xstaff,
          "xtypeleave": "Annual Leave"
        }));

    print("Body:" + response.body);
    print(response.statusCode);

    leave_remain1 = xbalanceModelFromJson(response.body);
    print("balance:" + leave_remain1.xbalance);

    xbalance = leave_remain1.xbalance;

    return '';
  }

  Future<void> getLocationout() async {
    Position position = await Geolocator.getCurrentPosition();
    print(position.latitude);
    print(position.longitude);

    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      Placemark place = placemarks[0];

      setState(() {
        //_currentAddress = "${place.locality}, ${place.postalCode}, ${place.country}";
        _currentAddressout =
            "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
    //print(_currentAddress);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAPIDATA();
  }

  Future<bool?> showWarningContext(BuildContext context) async => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            "Do you want to exit app?",
            style: TextStyle(color: Color(0xff074974)),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff074974),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text(
                    "No",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff074974),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextButton(
                  onPressed: () {
                    if (Platform.isAndroid) {
                      SystemNavigator.pop();
                    } else if (Platform.isIOS) {
                      exit(0);
                    }
                  },
                  child: Text("Yes", style: TextStyle(color: Colors.white))),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WillPopScope(
          onWillPop: () async {
            final shouldPop = await showWarningContext(context);
            return shouldPop ?? false;
          },
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              //automaticallyImplyLeading: false,
              leading: const Text(""),
              title: Center(
                child:
                    // Image(
                    //   image: AssetImage(
                    //       'images/orange.png'),
                    //   height: 150,
                    //   width: 140,
                    // ),
                    //   Text(widget.loginModel.xstaff,
                    //     style: TextStyle(
                    //       color: Colors.blue,
                    //     ),
                    //   ),
                    Text("HCM",
                        style: GoogleFonts.bakbakOne(
                            color: Color(0xff074974), fontSize: 25)),
              ),
              // leading: IconButton(
              //   icon: Icon(Icons.menu,
              //     color: Colors.blue,),
              //   // call toggle from SlideDrawer to alternate between open and close
              //   // when pressed menu button
              //   //onPressed: () => SlideDrawer.of(context)!.toggle(),
              //   onPressed: () => SlideDrawer.of(context)!.toggle(),
              // ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.logout, color: Color(0xff074974))),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (widget.loginModel.xsex == 'Male') ...[
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('images/male.png'),
                          ),
                        ] else if (widget.loginModel.xsex == 'Female') ...[
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('images/female.png'),
                          ),
                        ] else ...[
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('images/male.png'),
                          ),
                        ],
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Text(
                                  "${widget.loginModel.xname}",
                                  //"Mohammad Shariful Islam Shabuj",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.visible,
                                  style: GoogleFonts.bakbakOne(
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xff074974),
                                  ),
                                ),
                              ),

                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Text(
                                  " ${widget.loginModel.xdesignation}",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.bakbakOne(
                                    // //fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xff074974),
                                  ),
                                ),
                              ),
                              // Text(
                              //   " ${widget.loginModel.xdeptname}",
                              //   textAlign: TextAlign.justify,
                              //   style: GoogleFonts.bakbakOne(
                              //     // //fontWeight: FontWeight.bold,
                              //     fontSize: 15,
                              //     color: Color(0xff074974),
                              //   ),
                              // ),
                              Text(
                                " ${widget.loginModel.xempcategory}",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.bakbakOne(
                                  // //fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color(0xff074974),
                                ),
                              ),

                              // Text(
                              //   " ${widget.loginModel.xstaff}",
                              //   textAlign: TextAlign.justify,
                              //   style: GoogleFonts.bakbakOne(
                              //     ////fontWeight: FontWeight.bold,
                              //     fontSize: 15,
                              //     color: Color(0xff074974),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                    child: Container(
                      //height: MediaQuery.of(context).size.width/2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // color: ispressed ? Colors.white : Colors.grey,
                        //border: Border.all(color: Colors.grey),
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
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Center(
                  //       child: Container(
                  //         height: 40,
                  //         width: 100,
                  //         decoration: BoxDecoration(
                  //           color: Colors.green,
                  //           //border: Border.all(color: Colors.grey),
                  //           borderRadius: BorderRadius.circular(10),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Colors.grey.withOpacity(0.5),
                  //               spreadRadius: 1,
                  //               blurRadius: 5,
                  //               offset: Offset(0, 3), // changes position of shadow
                  //             ),
                  //           ],
                  //         ),
                  //         child: FlatButton(
                  //           shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(20.0)),
                  //
                  //           onPressed: () {
                  //             //something will change
                  //             setState(() {
                  //               DateTime now = DateTime.now();
                  //               date = now.toString();
                  //               String Onlydate = new DateFormat("h:mm:ssa").format(now);
                  //               intime = '$Onlydate';
                  //             });
                  //             print(intime);
                  //           },
                  //           child: Text("IN",
                  //             textAlign: TextAlign.center,
                  //             style: GoogleFonts.bakbakOne(
                  //               fontSize: 18,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     Center(
                  //       child: Container(
                  //         height: 40,
                  //         width: 100,
                  //         decoration: BoxDecoration(
                  //           color: Colors.red,
                  //           //border: Border.all(color: Colors.grey),
                  //           borderRadius: BorderRadius.circular(10),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Colors.grey.withOpacity(0.5),
                  //               spreadRadius: 1,
                  //               blurRadius: 5,
                  //               offset: Offset(0, 3), // changes position of shadow
                  //             ),
                  //           ],
                  //         ),
                  //         child: FlatButton(
                  //           shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(20.0)),
                  //
                  //           onPressed: ()async {
                  //             //something will change
                  //             setState(() {
                  //               DateTime now = DateTime.now();
                  //               date = now.toString();
                  //               String Onlydate = new DateFormat("h:mm:ssa").format(now);
                  //               outtime = '$Onlydate';
                  //               print(outtime);
                  //             });
                  //           },
                  //           child: Text("OUT",
                  //             textAlign: TextAlign.center,
                  //             style: GoogleFonts.bakbakOne(
                  //               fontSize: 18,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width / 2.5,
                          width: MediaQuery.of(context).size.width / 2.65,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            //border: Border.all(color: Colors.grey),
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
                            onPressed: () async {
                              setState(() {
                                notificationTime = DateTime.now();
                              });

                              print(notificationTime);

                              // getNotificaitonCount();
                              // http://172.20.20.69/api/smallapi/earlycount.php

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Get_zid(
                                            xposition:
                                                widget.loginModel.xposition,
                                            xstaff: widget.loginModel.xstaff,
                                            zemail: widget.loginModel.zemail,
                                            loginModel: widget.loginModel,
                                          )));

                              // if(widget.loginModel.xrole == "User"){
                              //   Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationList(xposition: widget.loginModel.xposition,xstaff: widget.loginModel.xstaff,)));
                              // }else{
                              //   Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminNotification(xposition: widget.loginModel.xposition,xstaff: widget.loginModel.xstaff,zemail: widget.loginModel.zemail,)));
                              // }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 17),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // const Icon(Icons.notifications_active_sharp,
                                      //   size: 70,
                                      //   color: Color(0xff4AA0EC),
                                      // ),

                                      Image(
                                        image: AssetImage(
                                            'images/notification.png'),
                                        height: 60,
                                        width: 60,
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),

                                      Text(
                                        "Notificaiton",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.bakbakOne(
                                          fontSize: 15,
                                          color: Color(0xff074974),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        // Container(
                        //   height: MediaQuery.of(context).size.width / 2.5,
                        //   width: MediaQuery.of(context).size.width / 2.65,
                        //   decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     //border: Border.all(color: Colors.grey),
                        //     borderRadius: BorderRadius.circular(20),
                        //     boxShadow: [
                        //       BoxShadow(
                        //         color: Colors.grey.withOpacity(0.5),
                        //         spreadRadius: 1,
                        //         blurRadius: 5,
                        //         offset:
                        //             Offset(0, 3), // changes position of shadow
                        //       ),
                        //     ],
                        //   ),
                        //   child: FlatButton(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(20.0)),
                        //     onPressed: () async {
                        //       Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) => AttendanceField(
                        //                     xstaff: widget.loginModel.xstaff,
                        //                     xposition:
                        //                         widget.loginModel.xposition,
                        //                     xsid: widget.loginModel.xsid,
                        //                   )));
                        //     },
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: [
                        //         // const Icon(FontAwesomeIcons.clipboardCheck,
                        //         //   size: 60,
                        //         //   color: Color(0xff4AA0EC),
                        //         // ),
                        //
                        //         const Image(
                        //           image: AssetImage('images/attendance.png'),
                        //           height: 60,
                        //           width: 60,
                        //         ),
                        //
                        //         SizedBox(
                        //           height: 20,
                        //         ),
                        //
                        //         Text(
                        //           "Attendance",
                        //           textAlign: TextAlign.center,
                        //           style: GoogleFonts.bakbakOne(
                        //             fontSize: 15,
                        //             color: Color(0xff074974),
                        //           ),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       left: 30.0, right: 30.0, bottom: 30.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Container(
                  //         height: MediaQuery.of(context).size.width / 2.5,
                  //         width: MediaQuery.of(context).size.width / 2.65,
                  //         decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           //border: Border.all(color: Colors.grey),
                  //           borderRadius: BorderRadius.circular(20),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Colors.grey.withOpacity(0.5),
                  //               spreadRadius: 1,
                  //               blurRadius: 5,
                  //               offset:
                  //                   Offset(0, 3), // changes position of shadow
                  //             ),
                  //           ],
                  //         ),
                  //         child: FlatButton(
                  //           shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(20.0)),
                  //           onPressed: () async {
                  //             Navigator.push(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (context) => Leave_page(
                  //                           xposition:
                  //                               widget.loginModel.xposition,
                  //                           xstaff: widget.loginModel.xstaff,
                  //                           xsid: widget.loginModel.xsid,
                  //                           xbalance: xbalance,
                  //                           xname: widget.loginModel.xname,
                  //                           supname: widget.loginModel.supname,
                  //                         )));
                  //           },
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               // const Icon(FontAwesomeIcons.calendarPlus,
                  //               //   size: 60,
                  //               //   color: Color(0xff4AA0EC),
                  //               // ),
                  //
                  //               Image(
                  //                 image: AssetImage('images/leavetour.png'),
                  //                 height: 60,
                  //                 width: 60,
                  //               ),
                  //
                  //               SizedBox(
                  //                 height: 20,
                  //               ),
                  //
                  //               Text(
                  //                 "Leave and Tour",
                  //                 textAlign: TextAlign.center,
                  //                 style: GoogleFonts.bakbakOne(
                  //                   fontSize: 15,
                  //                   color: Color(0xff074974),
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //
                  //       SizedBox(
                  //         width: 20,
                  //       ),
                  //
                  //       //
                  //       // Container(
                  //       //   height: MediaQuery.of(context).size.width/2.5,
                  //       //   width: MediaQuery.of(context).size.width/2.65,
                  //       //   decoration: BoxDecoration(
                  //       //     color: Colors.white,
                  //       //     //border: Border.all(color: Colors.grey),
                  //       //     borderRadius: BorderRadius.circular(20),
                  //       //     boxShadow: [
                  //       //       BoxShadow(
                  //       //         color: Colors.grey.withOpacity(0.5),
                  //       //         spreadRadius: 1,
                  //       //         blurRadius: 5,
                  //       //         offset: Offset(0, 3), // changes position of shadow
                  //       //       ),
                  //       //     ],
                  //       //   ),
                  //       //   child: FlatButton(
                  //       //     shape: RoundedRectangleBorder(
                  //       //         borderRadius: BorderRadius.circular(20.0)),
                  //       //
                  //       //     onPressed: (){
                  //       //       Navigator.push(context, MaterialPageRoute(builder: (context)=>AbsentApproval_page()));
                  //       //     },
                  //       //     child: Column(
                  //       //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       //       mainAxisAlignment: MainAxisAlignment.center,
                  //       //       children: [
                  //       //         // const Icon(FontAwesomeIcons.calendarMinus,
                  //       //         //   size: 60,
                  //       //         //   color: Color(0xff4AA0EC),
                  //       //         // ),
                  //       //
                  //       //         Image(
                  //       //           image: AssetImage('images/absent.png'),
                  //       //           height: 60,
                  //       //           width: 60,
                  //       //         ),
                  //       //
                  //       //
                  //       //         SizedBox(height: 10,),
                  //       //
                  //       //         Text("Absence Approval",
                  //       //           textAlign: TextAlign.center,
                  //       //           style: GoogleFonts.bakbakOne(
                  //       //             fontSize: 15,
                  //       //             color: Colors.grey,
                  //       //           ),
                  //       //         )
                  //       //       ],
                  //       //     ),
                  //       //   ),
                  //       // ),
                  //
                  //       // Container(
                  //       //   height: MediaQuery.of(context).size.width/2.5,
                  //       //   width: MediaQuery.of(context).size.width/2.65,
                  //       //   decoration: BoxDecoration(
                  //       //     color: Colors.white,
                  //       //     //border: Border.all(color: Colors.grey),
                  //       //     borderRadius: BorderRadius.circular(20),
                  //       //     boxShadow: [
                  //       //       BoxShadow(
                  //       //         color: Colors.grey.withOpacity(0.5),
                  //       //         spreadRadius: 1,
                  //       //         blurRadius: 5,
                  //       //         offset: Offset(0, 3), // changes position of shadow
                  //       //       ),
                  //       //     ],
                  //       //   ),
                  //       //   child: FlatButton(
                  //       //     shape: RoundedRectangleBorder(
                  //       //         borderRadius: BorderRadius.circular(20.0)),
                  //       //
                  //       //     onPressed: (){
                  //       //       //Navigator.push(context, MaterialPageRoute(builder: (context)=>Looptry(xstaff: widget.loginModel.xstaff, xposition: widget.loginModel.xposition, xsid: widget.loginModel.xsid)));
                  //       //     },
                  //       //     child: Column(
                  //       //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       //       mainAxisAlignment: MainAxisAlignment.center,
                  //       //       children: [
                  //       //         // const Icon(Icons.sync,
                  //       //         //   size: 50,
                  //       //         //   color: Color(0xff4AA0EC),
                  //       //         // ),
                  //       //
                  //       //         Image(
                  //       //           image: AssetImage('images/sync.png'),
                  //       //           height: 60,
                  //       //           width: 60,
                  //       //         ),
                  //       //
                  //       //         SizedBox(height: 20,),
                  //       //
                  //       //         Text("Data Sync",
                  //       //           textAlign: TextAlign.center,
                  //       //           style: GoogleFonts.bakbakOne(
                  //       //             fontSize: 15,
                  //       //             color: Colors.grey,
                  //       //           ),
                  //       //         )
                  //       //       ],
                  //       //     ),
                  //       //   ),
                  //       // ),
                  //
                  //       Container(
                  //         height: MediaQuery.of(context).size.width / 2.5,
                  //         width: MediaQuery.of(context).size.width / 2.65,
                  //         decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           //border: Border.all(color: Colors.grey),
                  //           borderRadius: BorderRadius.circular(20),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Colors.grey.withOpacity(0.5),
                  //               spreadRadius: 1,
                  //               blurRadius: 5,
                  //               offset:
                  //                   Offset(0, 3), // changes position of shadow
                  //             ),
                  //           ],
                  //         ),
                  //         child: FlatButton(
                  //           shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(20.0)),
                  //           onPressed: () {
                  //             Navigator.push(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (context) => Payslip_page(
                  //                           xname: widget.loginModel.xname,
                  //                           xempbank: widget.loginModel.xempbank,
                  //                           xacc: widget.loginModel.xacc,
                  //                           xstaff: widget.loginModel.xstaff,
                  //                         )));
                  //           },
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               // const Icon(FontAwesomeIcons.fileAlt,
                  //               //   size: 60,
                  //               //   color: Color(0xff4AA0EC),
                  //               // ),
                  //
                  //               Image(
                  //                 image: AssetImage('images/payslip.png'),
                  //                 height: 60,
                  //                 width: 60,
                  //               ),
                  //
                  //               SizedBox(
                  //                 height: 20,
                  //               ),
                  //
                  //               Text(
                  //                 "Pay Slip",
                  //                 textAlign: TextAlign.center,
                  //                 style: GoogleFonts.bakbakOne(
                  //                   fontSize: 15,
                  //                   color: Color(0xff074974),
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  //
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       left: 30.0, right: 30.0, bottom: 30.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       // Container(
                  //       //   height: MediaQuery.of(context).size.width/2.5,
                  //       //   width: MediaQuery.of(context).size.width/2.5,
                  //       //   decoration: BoxDecoration(
                  //       //     color: Colors.white,
                  //       //     //border: Border.all(color: Colors.grey),
                  //       //     borderRadius: BorderRadius.circular(20),
                  //       //     boxShadow: [
                  //       //       BoxShadow(
                  //       //         color: Colors.grey.withOpacity(0.5),
                  //       //         spreadRadius: 1,
                  //       //         blurRadius: 5,
                  //       //         offset: Offset(0, 3), // changes position of shadow
                  //       //       ),
                  //       //     ],
                  //       //   ),
                  //       //   child: FlatButton(
                  //       //     shape: RoundedRectangleBorder(
                  //       //         borderRadius: BorderRadius.circular(20.0)),
                  //       //
                  //       //     onPressed: (){
                  //       //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Payslip_page(xname: widget.loginModel.xname,xempbank: widget.loginModel.xempbank,xacc: widget.loginModel.xacc, xstaff: widget.loginModel.xstaff,)));
                  //       //     },
                  //       //     child: Column(
                  //       //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       //       mainAxisAlignment: MainAxisAlignment.center,
                  //       //       children: [
                  //       //         // const Icon(FontAwesomeIcons.fileAlt,
                  //       //         //   size: 60,
                  //       //         //   color: Color(0xff4AA0EC),
                  //       //         // ),
                  //       //
                  //       //         Image(
                  //       //           image: AssetImage('images/payslip.png'),
                  //       //           height: 60,
                  //       //           width: 60,
                  //       //         ),
                  //       //
                  //       //
                  //       //         SizedBox(height: 20,),
                  //       //
                  //       //         Text("Pay Slip",
                  //       //           textAlign: TextAlign.center,
                  //       //           style: GoogleFonts.bakbakOne(
                  //       //             fontSize: 15,
                  //       //             color: Colors.grey,
                  //       //           ),
                  //       //         )
                  //       //       ],
                  //       //     ),
                  //       //   ),
                  //       // ),
                  //
                  //       SizedBox(
                  //         width: 20,
                  //       ),
                  //       //
                  //       // Container(
                  //       //   height: MediaQuery.of(context).size.width/2.5,
                  //       //   width: MediaQuery.of(context).size.width/2.65,
                  //       //   decoration: BoxDecoration(
                  //       //     color: Colors.white,
                  //       //     //border: Border.all(color: Colors.grey),
                  //       //     borderRadius: BorderRadius.circular(20),
                  //       //     boxShadow: [
                  //       //       BoxShadow(
                  //       //         color: Colors.grey.withOpacity(0.5),
                  //       //         spreadRadius: 1,
                  //       //         blurRadius: 5,
                  //       //         offset: Offset(0, 3), // changes position of shadow
                  //       //       ),
                  //       //     ],
                  //       //   ),
                  //       //   child: FlatButton(
                  //       //     shape: RoundedRectangleBorder(
                  //       //         borderRadius: BorderRadius.circular(20.0)),
                  //       //
                  //       //     onPressed: (){
                  //       //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Sales_Homepage()));
                  //       //     },
                  //       //     child: Column(
                  //       //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       //       mainAxisAlignment: MainAxisAlignment.center,
                  //       //       children: [
                  //       //         // const Icon(FontAwesomeIcons.sellsy,
                  //       //         //   size: 60,
                  //       //         //   color: Color(0xff4AA0EC),
                  //       //         // ),
                  //       //
                  //       //         Image(
                  //       //           image: AssetImage('images/sales.png'),
                  //       //           height: 60,
                  //       //           width: 60,
                  //       //         ),
                  //       //
                  //       //
                  //       //         SizedBox(height: 20,),
                  //       //
                  //       //         Text("Sales",
                  //       //           textAlign: TextAlign.center,
                  //       //           style: GoogleFonts.bakbakOne(
                  //       //             fontSize: 15,
                  //       //             color: Colors.grey,
                  //       //           ),
                  //       //         )
                  //       //       ],
                  //       //     ),
                  //       //   ),
                  //       // ),
                  //     ],
                  //   ),
                  // ),
                  //
                  // // Container(
                  // //   height: MediaQuery.of(context).size.width/2.5,
                  // //   width: MediaQuery.of(context).size.width/2.5,
                  // //   decoration: BoxDecoration(
                  // //     color: Colors.white,
                  // //     //border: Border.all(color: Colors.grey),
                  // //     borderRadius: BorderRadius.circular(20),
                  // //     boxShadow: [
                  // //       BoxShadow(
                  // //         color: Colors.grey.withOpacity(0.5),
                  // //         spreadRadius: 1,
                  // //         blurRadius: 5,
                  // //         offset: Offset(0, 3), // changes position of shadow
                  // //       ),
                  // //     ],
                  // //   ),
                  // //   child: FlatButton(
                  // //     shape: RoundedRectangleBorder(
                  // //         borderRadius: BorderRadius.circular(20.0)),
                  // //
                  // //     onPressed: (){
                  // //       Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminNotificationList(xposition: widget.loginModel.xposition,xstaff: widget.loginModel.xstaff,)));
                  // //     },
                  // //     child: Row(
                  // //       mainAxisAlignment: MainAxisAlignment.start,
                  // //       crossAxisAlignment: CrossAxisAlignment.start,
                  // //       children: [
                  // //         Padding(
                  // //           padding: const EdgeInsets.only(top: 10,left: 17),
                  // //           child: Column(
                  // //             crossAxisAlignment: CrossAxisAlignment.center,
                  // //             mainAxisAlignment: MainAxisAlignment.center,
                  // //             children: [
                  // //               // const Icon(Icons.notifications_active_sharp,
                  // //               //   size: 70,
                  // //               //   color: Color(0xff4AA0EC),
                  // //               // ),
                  // //
                  // //               Image(
                  // //                 image: AssetImage('images/notification.png'),
                  // //                 height: 60,
                  // //                 width: 60,
                  // //               ),
                  // //
                  // //               SizedBox(height: 10,),
                  // //
                  // //               Text("Admin\nNotificaiton",
                  // //                 textAlign: TextAlign.center,
                  // //                 style: GoogleFonts.bakbakOne(
                  // //                   fontSize: 15,
                  // //                   color: Color(0xff074974),
                  // //                 ),
                  // //               )
                  // //             ],
                  // //           ),
                  // //         ),
                  // //         // const Padding(
                  // //         //   padding: EdgeInsets.only(top: 20, ),
                  // //         //   child: CircleAvatar(
                  // //         //     // backgroundColor: Colors.redAccent,
                  // //         //     backgroundColor: Color(0xff8CA6DB),
                  // //         //     radius: 10,
                  // //         //     child: Text(
                  // //         //       '0',
                  // //         //       style: TextStyle(
                  // //         //         color: Colors.white,
                  // //         //         fontSize: 17,
                  // //         //         //fontWeight: FontWeight.bold,
                  // //         //       ),),
                  // //         //   ),
                  // //         // ),
                  // //       ],
                  // //     ),
                  // //   ),
                  // // ),
                  //
                  // // Container(
                  // //   height: MediaQuery.of(context).size.width/2.5,
                  // //   width: MediaQuery.of(context).size.width/2.65,
                  // //   decoration: BoxDecoration(
                  // //     color: Colors.white,
                  // //     //border: Border.all(color: Colors.grey),
                  // //     borderRadius: BorderRadius.circular(20),
                  // //     boxShadow: [
                  // //       BoxShadow(
                  // //         color: Colors.grey.withOpacity(0.5),
                  // //         spreadRadius: 1,
                  // //         blurRadius: 5,
                  // //         offset: Offset(0, 3), // changes position of shadow
                  // //       ),
                  // //     ],
                  // //   ),
                  // //   child: FlatButton(
                  // //     shape: RoundedRectangleBorder(
                  // //         borderRadius: BorderRadius.circular(20.0)),
                  // //
                  // //     onPressed: (){
                  // //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Admin_Late_Leave_NotificationList12(xposition: widget.loginModel.xposition,xstaff: widget.loginModel.xstaff,zemail: widget.loginModel.zemail,)));
                  // //     },
                  // //
                  // //     child: Column(
                  // //       crossAxisAlignment: CrossAxisAlignment.center,
                  // //       mainAxisAlignment: MainAxisAlignment.center,
                  // //       children: [
                  // //         // const Icon(FontAwesomeIcons.calendarMinus,
                  // //         //   size: 60,
                  // //         //   color: Color(0xff4AA0EC),
                  // //         // ),
                  // //
                  // //         Image(
                  // //           image: AssetImage('images/absent.png'),
                  // //           height: 60,
                  // //           width: 60,
                  // //         ),
                  // //
                  // //
                  // //         SizedBox(height: 10,),
                  // //
                  // //         Text("Absence Approval",
                  // //           textAlign: TextAlign.center,
                  // //           style: GoogleFonts.bakbakOne(
                  // //             fontSize: 15,
                  // //             color: Colors.grey,
                  // //           ),
                  // //         )
                  // //       ],
                  // //     ),
                  // //   ),
                  // // ),

                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
