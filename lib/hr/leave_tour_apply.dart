// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:aygazhcm/data_model/leave_tour_model.dart';
// import 'package:aygazhcm/data_model/worknote_offline_model.dart';
// import 'package:aygazhcm/database/dbhelperworkNote.dart';
// import 'package:intl/intl.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';
// import 'package:syncfusion_flutter_core/theme.dart';
// import 'package:http/http.dart' as http;
//
//
// class LeaveApply_page extends StatefulWidget {
//   const LeaveApply_page({Key? key}) : super(key: key);
//
//   @override
//   _LeaveApply_pageState createState() => _LeaveApply_pageState();
// }
//
// class _LeaveApply_pageState extends State<LeaveApply_page> {
//
//   // DateTime now = DateTime.now();
//   DateTime now = DateTime.now();
//   String dropdownValue = 'Pick';
//   String _value = '' ;
//   String _value1 = '' ;
//   String taskAssign = '';
//   String contact = '';
//   String reason = '';
//
//
//   void _showDatePicker() async {
//     DateTime? picked = await showDatePicker(
//         context: context,
//         initialDate: new DateTime.now(),
//         firstDate: new DateTime(2021),
//         lastDate: new DateTime(2023)
//     );
//     if(picked != null) setState(() => _value = picked.toString());
//   }
//
//   void _showDatePicker1() async {
//     DateTime? picked = await showDatePicker(
//         context: context,
//         initialDate: new DateTime.now(),
//         firstDate: new DateTime(2021),
//         lastDate: new DateTime(2023)
//     );
//     if(picked != null) setState(() => _value1 = picked.toString());
//   }
//
//   //
//   // late DatabaseHandlerworkNote handler;
//   //
//   // void initState() {
//   //   super.initState();
//   //   this.handler = DatabaseHandlerworkNote();
//   //   this.handler.initializeDB().whenComplete(() async {
//   //     await this.addUsers();
//   //     setState(() {});
//   //   });
//   // }
//   //
//   // Future<int> addUsers() async {
//   //   WorkNoteOfflineModel application = WorkNoteOfflineModel(leaveType: dropdownValue, fromDate: _value, toDate: _value1, contactNumber: contact, taskAssigntTo: taskAssign, reasonApplicaiton: reason, createdAt: "$now");
//   //   //LeaveTourOfflineModel secondUser = LeaveTourOfflineModel(leaveType: "Tour", fromDate: "26Jan2022", toDate: "10Feb2022", contactNumber: "022222222222", taskAssigntTo: "Raad", reasonApplicaiton: "Tour", createdAt: "$now");
//   //   List<WorkNoteOfflineModel> listOfApplication = [application];
//   //   return await this.handler.insertApplication(listOfApplication);
//   // }
//
//
//   late LeaveTourModel _dataModel;
//
//
//
//   submitData(String dvalue, String value, String value1,contact,taskAssign,reason) async{
//
//
//     try{
//       var response= await http.post(Uri.parse('https://flutterapi.brotherdev.com/api.php'),body:
//       {"leaveType": dvalue,
//         "value": value,
//         "value1": value1,
//         "contact": contact,
//         "taskAssign": taskAssign,
//         "reason": reason
//       });
//
//     }catch(er){
//       print(er);
//     }
//
//     // var response= await http.post(Uri.parse('https://flutterapi.brotherdev.com/api.php'),body:
//     // {"leaveType": dvalue,
//     //   "value": value,
//     //   "value1": value1,
//     //   "contact": contact,
//     //   "taskAssign": taskAssign,
//     //   "reason": reason
//     // });
//     // var data = response.body;
//     // // print (data);
//     // print ("ii"+response.body);
//     // //print(dvalue);
//     //
//     // // if(response.statusCode==201){
//     // //   String responseString= response.body;
//     // //   dataModelFromJson(responseString);
//     // // }
//     // //else return null;
//   }
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Color(0xff074974),
//             title: Center(
//                 child: Text("Leave and Tour Apply",
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.bakbakOne(
//                     fontSize: 20,
//                   ),
//                 )
//             ),
//
//           ),
//
//           body: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 15.0,top: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//
//                   Text("Mohammad Shariful Alam Shabuj",
//                     style: GoogleFonts.bakbakOne(
//                       fontSize: 20,
//                       color: Color(0xff064A76),
//                     ),
//                   ),
//
//                   Text("1296",
//                     style: GoogleFonts.bakbakOne(
//                       fontSize: 20,
//                       color: Color(0xff064A76),
//                     ),
//                   ),
//
//                   Text('$now',
//                     style: GoogleFonts.bakbakOne(
//                       fontSize: 15,
//                       color: Color(0xff064A76),
//                     ),
//                   ),
//
//
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         width: double.infinity,
//                         height: 70,
//                         child: Center(
//                           child: DropdownButton<String>(
//                             value: dropdownValue,
//                             icon: const Icon(Icons.keyboard_arrow_down),
//                             elevation: 16,
//                             style: const TextStyle(color: Color(0xff064A76),fontSize: 15),
//                             underline: Container(
//                               height: 2,
//                               color: Colors.white,
//                             ),
//                             onChanged: (String? newValue) {
//                               setState(() {
//                                 dropdownValue = newValue!;
//                               });
//                             },
//                             items: <String>['Pick', 'Annual Leave', 'Leave without pay ', 'Replacement Leave','special leave','Tour','Work from home']
//                                 .map<DropdownMenuItem<String>>((String value) {
//                               return DropdownMenuItem<String>(
//                                 value: value,
//                                 child: Text(value),
//                               );
//                             }).toList(),
//                           ),
//                         ),
//                         margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                         padding: EdgeInsets.only(bottom: 10),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                               color: Colors.black,
//                               width: 1),
//                           borderRadius: BorderRadius.circular(5),
//                           shape: BoxShape.rectangle,
//                         ),
//                       ),
//                       Positioned(
//                           left: 40,
//                           top: 12,
//                           child: Container(
//                             padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                             color: Color(0xfffafafa),
//                             child: Text(
//                               'Leave Type',
//                                 style: GoogleFonts.bakbakOne(
//                                   fontSize: 15,
//                                   color: Color(0xff074974)
//                                 ),
//                             ),
//                           ),
//                       ),
//                     ],
//                   ),
//
//
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         width: double.infinity,
//                         height: 100,
//                         child: Center(
//                             child: Row(
//                               children: [
//                                 FlatButton(
//                                   color: Color(0xfffafafa),
//                                     onPressed: () {
//                                       _showDatePicker();
//                                     },
//                                     child: Icon(Icons.calendar_today_sharp),
//                                 ),
//
//                                 SizedBox(width: 10,),
//
//                                 Text("$_value",
//                                   style: GoogleFonts.bakbakOne(
//                                     fontSize: 15,
//                                     color: Color(0xff064A76),
//                                   ),
//                                 ),
//
//                               ],
//                             )
//                         ),
//                         margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                         padding: EdgeInsets.only(bottom: 10),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                               color: Colors.black,
//                               width: 1),
//                           borderRadius: BorderRadius.circular(5),
//                           shape: BoxShape.rectangle,
//                         ),
//                       ),
//                       Positioned(
//                         left: 40,
//                         top: 12,
//                         child: Container(
//                           padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                           color: Color(0xfffafafa),
//                           child: Text(
//                             'Form Date',
//                               style: GoogleFonts.bakbakOne(
//                               fontSize: 15,
//                               color: Color(0xff074974)
//                               ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//
//
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         width: double.infinity,
//                         height: 100,
//                         child: Center(
//                             child: Row(
//                               children: [
//                                 FlatButton(
//                                   color: Color(0xfffafafa),
//                                   onPressed: () {
//                                     _showDatePicker1();
//                                   },
//                                   child: Icon(Icons.calendar_today_sharp),
//                                 ),
//
//                                 SizedBox(width: 10,),
//
//                                 Text("$_value1",
//                                   style: GoogleFonts.bakbakOne(
//                                     fontSize: 15,
//                                     color: Color(0xff064A76),
//                                   ),
//                                 ),
//
//                               ],
//                             )
//                         ),
//                         margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                         padding: EdgeInsets.only(bottom: 10),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                               color: Colors.black,
//                               width: 1),
//                           borderRadius: BorderRadius.circular(5),
//                           shape: BoxShape.rectangle,
//                         ),
//                       ),
//                       Positioned(
//                         left: 40,
//                         top: 12,
//                         child: Container(
//                           padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                           color: Color(0xfffafafa),
//                           child: Text(
//                             'To Date',
//                             style: GoogleFonts.bakbakOne(
//                                 fontSize: 15,
//                                 color: Color(0xff074974)
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         width: double.infinity,
//                         height: 70,
//                         child: Center(
//                             child: TextField(
//                               onChanged: (input){
//                                 contact = input;
//                               },
//                               decoration: InputDecoration(
//                                   hintText: " ",
//                                 border: InputBorder.none,
//                               ),
//                               keyboardType: TextInputType.number,
//                             )
//                         ),
//                         margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                         padding: EdgeInsets.only(bottom: 10),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                               color: Colors.black,
//                               width: 1),
//                           borderRadius: BorderRadius.circular(5),
//                           shape: BoxShape.rectangle,
//                         ),
//                       ),
//                       Positioned(
//                         left: 40,
//                         top: 12,
//                         child: Container(
//                           padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                           color: Color(0xfffafafa),
//                           child: Text(
//                             'Contact no during leave',
//                               style: GoogleFonts.bakbakOne(
//                               fontSize: 15,
//                               color: Color(0xff074974)
//                         ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         width: double.infinity,
//                         height: 70,
//                         child: Center(
//                             child: TextField(
//                               onChanged: (input){
//                                 taskAssign = input;
//                               },
//                               decoration: InputDecoration(
//                                   hintText: " ",
//                                 border: InputBorder.none,
//                               ),
//                             )
//                         ),
//                         margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                         padding: EdgeInsets.only(bottom: 10),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                               color: Colors.black,
//                               width: 1),
//                           borderRadius: BorderRadius.circular(5),
//                           shape: BoxShape.rectangle,
//                         ),
//                       ),
//                       Positioned(
//                         left: 40,
//                         top: 12,
//                         child: Container(
//                           padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                           color: Color(0xfffafafa),
//                           child: Text(
//                             'Task Assign to',
//                             style: GoogleFonts.bakbakOne(
//                                 fontSize: 15,
//                                 color: Color(0xff074974)
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         width: double.infinity,
//                         height: 100,
//                         child: Center(
//                             child: TextField(
//                               onChanged: (input){
//                                 reason = input;
//                               },
//                               decoration: InputDecoration(
//                                   hintText: " ",
//                                 border: InputBorder.none,
//                               ),
//
//                             ),
//                         ),
//                         margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                         padding: EdgeInsets.only(bottom: 10),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                               color: Colors.black,
//                               width: 1),
//                           borderRadius: BorderRadius.circular(5),
//                           shape: BoxShape.rectangle,
//                         ),
//                       ),
//                       Positioned(
//                         left: 40,
//                         top: 12,
//                         child: Container(
//                           padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                           color: Color(0xfffafafa),
//                           child: Text(
//                             'Reason for Application',
//                             style: GoogleFonts.bakbakOne(
//                                 fontSize: 15,
//                                 color: Color(0xff074974)
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   Center(
//                     child: Container(
//                       height: 40,
//                       width: MediaQuery.of(context).size.width/1.2,
//                       decoration: BoxDecoration(
//                         color: Color(0xff074974),
//                         //border: Border.all(color: Colors.grey),
//                         borderRadius: BorderRadius.circular(10),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 1,
//                             blurRadius: 5,
//                             offset: Offset(0, 3), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: FlatButton(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20.0)),
//
//                         onPressed: ()async{
//                           //submitData(dvalue, value, value1, contact, taskAssign, reason)
//                           // print(dropdownValue);
//                           // print(_value);
//                           // print(_value1);
//                           //print(contact);
//                           // print(taskAssign);
//                           // print(reason);
//                           //addUsers();
//
//                           LeaveTourModel data= await submitData(dropdownValue, _value,_value1,contact,taskAssign,reason);
//
//                           setState(() {
//                             _dataModel = data;
//                           });
//
//                         },
//                         child: Text("Apply",
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.bakbakOne(
//                             fontSize: 18,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//
//                   SizedBox(height: 20,),
//
//                 ],
//               ),
//             ),
//           ),
//
//         ),
//       ),
//     );
//   }
// }




import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aygazhcm/data_model/leave_tour_model.dart';
import 'package:aygazhcm/data_model/loginModel.dart';
import 'package:aygazhcm/data_model/smallapi/holidaymodel.dart';
import 'package:aygazhcm/data_model/xyearperdate.dart';
import 'package:aygazhcm/home_page.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

import '../data_model/smallapi/blockdatemodel.dart';

class LeaveApply_page extends StatefulWidget {
  //const LeaveApply_page({Key? key}) : super(key: key);

  LeaveApply_page({required this.xstaff,required this.xposition,required this.xsid, required this.leave_avail, required this.xname,required this.appleave});

  String xstaff;
  String xposition;
  String xname;
  String leave_avail;
  String xsid;
  String appleave;


  @override
  _LeaveApply_pageState createState() => _LeaveApply_pageState();
}

class _LeaveApply_pageState extends State<LeaveApply_page> {


  late LoginModel data;

  // DateTime now = DateTime.now();
  DateTime now = DateTime.now();
  String dropdownValue = 'Pick';
  String _value = '' ;
  String _value1 = '' ;
  String taskAssign = '';
  String contact = '';
  String reason = '';
  String date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  String status = 'Waiting for Approval';

  int item = 21646421;


  // late Xyearperdate xyearperdate;
  // late String _xyearperdate;
  //
  // fetchPost() async {
  //   final response = await http.get(
  //       Uri.parse('http://172.20.20.69/API/xyearperdate.php'));
  //
  //   if (response.statusCode == 201) {
  //     Xyearperdate data = xyearperdateFromJson(response.body);
  //
  //     setState(() {
  //       _xyearperdate = data.xyearperdate.toString();
  //     });
  //
  //     print('installment ${data.xyearperdate}');
  //   }
  // }

  late Xyearperdate xyearperdate1;
  late int xyearperdate2;

  Future<String>  getAPIDATA() async {

    http.Response response = await http.get(Uri.parse('http://172.20.20.69/api/xyearperdate.php'),);




    xyearperdate1 = xyearperdateFromJson(response.body);

    xyearperdate2 = (xyearperdate1.xyearperdate)+1;

    print(xyearperdate1.xyearperdate);

    print(response.body);
    print(response.statusCode);

    return '';
  }

  late HolidayModel holiday;
  String holidaycount = " ";

  Future<String>  getholidaydata() async {

    http.Response response = await http.post(Uri.parse('http://172.20.20.69/api/smallAPI/holidayCount.php'),
        body:jsonEncode(<String, String>{
          "xstaff": widget.xstaff,
          "fdate": _value,
          "tdate" : _value1,
        })
    );

    print("Body:"+response.body);
    print(response.statusCode);

    holiday = holidayModelFromJson(response.body);
    print("holiday:"+holiday.holiday.toString());

    holidaycount = holiday.holiday.toString();

    return '';
  }


 late BlockeddateModel blockeddateModel;
  String blockdate = " ";

  Future<String>  getblockdatedata() async {

    http.Response response = await http.post(Uri.parse('http://172.20.20.69/api/smallAPI/dateblock.php'),
        body:jsonEncode(<String, String>{
          "xstaff": widget.xstaff,
          "fdate": _value,
          "tdate" : _value1,
        })
    );

    print("Body:"+response.body);
    print(response.statusCode);

    blockeddateModel = blockeddateModelFromJson(response.body);
    print("block:"+blockeddateModel.applydate.toString());

    blockdate = blockeddateModel.applydate.toString();

    return '';
  }



  void _showDatePicker() async {
    DateTime? picked = await showDatePicker(
        context: context,
        //initialDate: new DateTime.now(),
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2021),
        lastDate: new DateTime(2023),
      builder: (context, child) =>
          Theme(data: ThemeData(
              backgroundColor: Colors.blueAccent,
              colorScheme: ColorScheme.dark(
                primary: Colors.blueAccent,
                surface: Color(0xff064A76),
              )
          ),
            child: child as Widget,
          ),
    );
    if (picked != null && picked != date) {
      setState(() {
        date = picked.toString();
        //String Onlydate = new DateFormat("yyyy-MM-dd").format(picked);
        _value = DateFormat("yyyy-MM-dd").format(picked);

        //_value = '$Onlydate';


      });
    }
  }

  void _showDatePicker1() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2021),
        lastDate: new DateTime(2023),
      builder: (context, child) =>
          Theme(data: ThemeData(
              backgroundColor: Colors.blueAccent,
              colorScheme: ColorScheme.dark(
                primary: Colors.blueAccent,
                surface: Color(0xff064A76),
              )
          ),
            child: child as Widget,
          ),
    );
    // if(picked != null) setState(() => _value1 = picked.toString());

    if (picked != null && picked != date) {
      setState(() {
        date = picked.toString();
        _value1 = DateFormat("yyyy-MM-dd").format(picked);

      });
    }
    getholidaydata();
    getblockdatedata();
    getAPIDATA();
  }

  //
  // late DatabaseHandlerworkNote handler;
  //
  // void initState() {
  //   super.initState();
  //   this.handler = DatabaseHandlerworkNote();
  //   this.handler.initializeDB().whenComplete(() async {
  //     await this.addUsers();
  //     setState(() {});
  //   });
  // }
  //
  // Future<int> addUsers() async {
  //   WorkNoteOfflineModel application = WorkNoteOfflineModel(leaveType: dropdownValue, fromDate: _value, toDate: _value1, contactNumber: contact, taskAssigntTo: taskAssign, reasonApplicaiton: reason, createdAt: "$now");
  //   //LeaveTourOfflineModel secondUser = LeaveTourOfflineModel(leaveType: "Tour", fromDate: "26Jan2022", toDate: "10Feb2022", contactNumber: "022222222222", taskAssigntTo: "Raad", reasonApplicaiton: "Tour", createdAt: "$now");
  //   List<WorkNoteOfflineModel> listOfApplication = [application];
  //   return await this.handler.insertApplication(listOfApplication);
  // }


  late LeaveandTourModel _dataModel;



  // submitData(String dvalue, String value, String value1,contact,taskAssign,reason) async{
  //
  //   print(dvalue);
  //   print(value);
  //   print(value1);
  //   print(contact);
  //   print(taskAssign);
  //   print(reason);
  //   print(widget.xstaff);
  //   //print(status1);
  //
  //
  //   var response= await http.post(Uri.parse('http://172.20.20.69/api/loginapi.php'),body:
  //   jsonEncode(<String, String>{
  //     "zid" : "100060",
  //     "zauserid": widget.xstaff,
  //     "xstaff": widget.xstaff,
  //     "xdate": now.toString(),
  //     "xyear":  DateFormat("yyyy").format(now),
  //     "xday":  ,
  //     "xyearperdate":"xyearperdate",
  //     "xyesno":"xyesno",
  //     "xtypeleave":"xtypeleave",
  //     "xdatefrom":"xdatefrom",
  //     "xdateto":"xdateto",
  //     "xmobile":"xmobile",
  //     "xtstaff":"xtstaff",
  //     "xnote":"xnote",
  //     "xstatus":"xstatus",
  //     "xdaydeduct":"xdaydeduct",
  //     "xhourdeduct":"xhourdeduct",
  //     "xsid":"xsid",
  //     "xhday":"xhday",
  //     "xpreparer":"xpreparer"
  //   })
  //   );
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   //fetchPost();
  //   getAPIDATA();
  //
  // }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
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
                "Leave & Tour Apply",
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
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(widget.xname,
                    style: GoogleFonts.bakbakOne(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),

                  Text(widget.xposition,
                    style: GoogleFonts.bakbakOne(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),

                  Text(DateFormat("dd-MM-yyyy - hh:mm").format(now),
                    style: GoogleFonts.bakbakOne(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),


                  Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 70,
                        child: Center(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            elevation: 16,
                            style: const TextStyle(color: Colors.black,fontSize: 15),
                            underline: Container(
                              height: 2,
                              color: Colors.white,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['Pick', 'Annual Leave','Tour','Work from home'] //, 'Leave without pay ', 'Replacement Leave','special leave'
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1),
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 12,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                          color: Color(0xfffafafa),
                          child: Text(
                            'Leave Type',
                            style: GoogleFonts.bakbakOne(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


                  Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 100,
                        child: FlatButton(
                          color: Color(0xfffafafa),
                          onPressed: () {
                            _showDatePicker();
                          },
                          child: Center(
                              child: Row(
                                children: [
                                  // FlatButton(
                                  //   color: Color(0xfffafafa),
                                  //   onPressed: () {
                                  //     _showDatePicker();
                                  //   },
                                  //   child: Icon(Icons.calendar_today_sharp),
                                  // ),
                                  Icon(Icons.calendar_today_sharp),

                                  SizedBox(width: 10,),

                                  Text("$_value",
                                    style: GoogleFonts.bakbakOne(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),

                                ],
                              )
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1),
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 12,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                          color: Color(0xfffafafa),
                          child: Text(
                            'Form Date',
                            style: GoogleFonts.bakbakOne(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


                  Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 100,
                        child: FlatButton(
                          color: Color(0xfffafafa),
                          onPressed: () {
                            _showDatePicker1();
                          },
                          child: Center(
                              child: Row(
                                children: [
                                  // FlatButton(
                                  //   color: Color(0xfffafafa),
                                  //   onPressed: () {
                                  //     _showDatePicker1();
                                  //   },
                                  //   child: Icon(Icons.calendar_today_sharp),
                                  // ),

                                  Icon(Icons.calendar_today_sharp),

                                  SizedBox(width: 10,),

                                  Text("$_value1",
                                    style: GoogleFonts.bakbakOne(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),

                                ],
                              )
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1),
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 12,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                          color: Color(0xfffafafa),
                          child: Text(
                            'To Date',
                            style: GoogleFonts.bakbakOne(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 70,
                        child: Center(
                            child: TextField(
                              style: GoogleFonts.bakbakOne(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                              onChanged: (input){
                                contact = input;
                              },
                              decoration: InputDecoration(
                                hintText: " ",
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.number,
                            )
                        ),
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1),
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 12,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                          color: Color(0xfffafafa),
                          child: Text(
                            'Contact no during leave',
                            style: GoogleFonts.bakbakOne(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 70,
                        child: Center(
                            child: TextField(
                              style: GoogleFonts.bakbakOne(
                                fontSize: 15,
                                color: Colors.black
                            ),
                              onChanged: (input){
                                taskAssign = input;
                              },
                              decoration: InputDecoration(
                                hintText: " ",
                                border: InputBorder.none,
                              ),
                            )
                        ),
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1),
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 12,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                          color: Color(0xfffafafa),
                          child: Text(
                            'Task Assign to',
                            style: GoogleFonts.bakbakOne(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 100,
                        child: Center(
                          child: TextField(
                            style: GoogleFonts.bakbakOne(
                                fontSize: 15,
                                color: Colors.black
                            ),
                            onChanged: (input){
                              reason = input;
                            },
                            decoration: InputDecoration(
                              hintText: " ",
                              border: InputBorder.none,
                            ),

                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1),
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 12,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                          color: Color(0xfffafafa),
                          child: Text(
                            'Reason for Application',
                            style: GoogleFonts.bakbakOne(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Center(
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                        color: Color(0xff064A76),
                        //border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
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


          //submitData(dvalue, value, value1, contact, taskAssign, reason)
                          // print(dropdownValue);
                          // print(_value);
                          // print(_value1);
                          //print(contact);

                          // print(taskAssign);




                          //addUsers();

                          onPressed: ()async{

                            print(widget.leave_avail);


                            DateTime dt1 = DateTime.parse(_value);
                            DateTime dt2 = DateTime.parse(_value1);
                            //DateTime now1 = DateTime.parse(now.toString());
                            final difference = dt2.difference(dt1).inDays + 1;

                            String now1 = DateFormat("yyyy-MM-dd").format(now);
                            DateTime now2 = DateTime.parse(now1);

                            final year = DateFormat("yyyy").format(now);

                            print(dt1);
                            print(dt2);
                            print(year);
                            print(now2);

                            if(dropdownValue == 'Pick'){
                              showDialog(context: context, builder: (BuildContext context) {
                                return  AlertDialog(
                                  title: const Text("Error"),
                                  content:  Column(
                                    children: [
                                      Text("Must Select leave Type",
                                        style: GoogleFonts.bakbakOne(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    FlatButton(
                                      color: Color(0xff064A76),
                                      onPressed: (){
                                        //Navigator.pop(context);
                                        Navigator.pop(context);
                                      },
                                      child: Text("OK",
                                        style: GoogleFonts.bakbakOne(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                  scrollable: true,
                                );
                              });
                            }

                          else if(dt2.isBefore(dt1)){
                            showDialog(context: context, builder: (BuildContext context) {
                              return  AlertDialog(
                                title: const Text("Error"),
                                content:  Column(
                                  children: [
                                    Text("From date cannot be greater then To date",
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  FlatButton(
                                    color: Color(0xff064A76),
                                    onPressed: (){
                                      //Navigator.pop(context);
                                      Navigator.pop(context);
                                    },
                                    child: Text("OK",
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                                scrollable: true,
                              );
                            });
                          }

                          else if(int.parse(blockdate) != 0){
                            showDialog(context: context, builder: (BuildContext context) {
                              return  AlertDialog(
                                title: const Text("Error"),
                                content:  Column(
                                  children: [
                                    Text("Date Already Applied",
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  FlatButton(
                                    color: Color(0xff074974),
                                    onPressed: (){
                                      //Navigator.pop(context);
                                      Navigator.pop(context);
                                    },
                                    child: Text("OK",
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                                scrollable: true,
                              );
                            });
                          }

                          else if ((double.parse(widget.leave_avail)+int.parse(holidaycount)) < difference){
                            showDialog(context: context, builder: (BuildContext context) {
                              return  AlertDialog(
                                title: const Text("Error"),
                                content:  Column(
                                  children: [

                                    Text("Remain leave is "+widget.leave_avail+" But applied "+difference.toString(),
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  FlatButton(
                                    color: Color(0xff074974),
                                    onPressed: (){
                                      //Navigator.pop(context);
                                      Navigator.pop(context);
                                    },
                                    child: Text("OK",
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                                scrollable: true,
                              );
                            });
                          }
                          else if (((double.parse(widget.leave_avail))-int.parse(widget.appleave)+int.parse(holidaycount)) < difference){
                            showDialog(context: context, builder: (BuildContext context) {
                              return  AlertDialog(
                                title: const Text("Error"),
                                content:  Column(
                                  children: [

                                    //Text("Remain leave with Applied "+(double.parse(widget.leave_avail)).toString()+" But applied "+difference.toString(),
                                    Text("Remain leave is more then Applied leave",
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  FlatButton(
                                    color: Color(0xff074974),
                                    onPressed: (){
                                      //Navigator.pop(context);
                                      Navigator.pop(context);
                                    },
                                    child: Text("OK",
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                                scrollable: true,
                              );
                            });
                          }



                          else{
                            print(xyearperdate2);
                            var response= await http.post(Uri.parse('http://172.20.20.69/api/leaveandtourapply.php'),body:
                            jsonEncode(<String, String>{
                              "zid" : "100060",
                              "zauserid": widget.xposition,//position
                              "xstaff": widget.xstaff,
                              "xdate": "$now2",
                              "xyear":  "$year",
                              "xday":  difference.toString(),//add 1
                              //"xyearperdate": (int.parse(_xyearperdate)+1).toString(),// auto
                              "xyearperdate": xyearperdate2.toString(),// auto
                              "xyesno": "No",
                              "xtypeleave": dropdownValue,
                              "xdatefrom": "$dt1",
                              "xdateto": "$dt2",
                              "xmobile": contact,
                              "xtstaff": taskAssign,
                              "xnote": reason,
                              "xstatus":"Open",
                              "xdaydeduct":"1",
                              "xhourdeduct":"24",
                              "xsid":widget.xsid,
                              "xposition": widget.xposition,
                              "xhday":"0",// holiday
                              "xpreparer":widget.xstaff,
                              "xappday": difference.toString(),

                              // "zid" : "100060",
                              // "zauserid": widget.xstaff,
                              // "xstaff":widget.xstaff,
                              // "xdate":"2022-03-05 00:00:00",
                              // "xyear":"2022",
                              // "xday":"3",
                              // "xyearperdate": "21642164",
                              // "xyesno":"No",
                              // "xtypeleave":"Annual Leave",
                              // "xdatefrom":"2022-03-08 00:00:00",
                              // "xdateto":"2022-03-10 00:00:00",
                              // "xmobile":"Raad",
                              // "xtstaff":"EID-02243",
                              // "xnote":"As my wish.",
                              // "xstatus":"Open",
                              // "xdaydeduct":"1",
                              // "xhourdeduct":"24",
                              // "xsid":"1878",
                              // "xposition": "2125",
                              // "xhday":"0",
                              // "xpreparer":"EID-02125",
                              // "xappday":"3"
                              //
                              // "zid" : "100060",
                              // "zauserid":widget.xposition,
                              // "xstaff":widget.xstaff,
                              // "xdate":"2022-03-05 00:00:00",
                              // "xyear":"2022",
                              // "xday":"3",
                              // "xyesno":"No",
                              // "xtypeleave":"Annual Leave",
                              // "xdatefrom":"2022-03-08 00:00:00",
                              // "xdateto":"2022-03-10 00:00:00",
                              // "xmobile":"Raad",
                              // "xtstaff":"EID-02243",
                              // "xnote":"As my wish.",
                              // "xstatus":"Open",
                              // "xdaydeduct":"1",
                              // "xhourdeduct":"24",
                              // "xsid":"1878",
                              // "xposition": "2125",
                              // "xhday":"0",
                              // "xpreparer":"EID-02125",
                              // "xappday":"3"
                              //

                            })
                            );

                            print(response.body);
                            print(response.statusCode);

                            print(_value);



                            showDialog(context: context, builder: (BuildContext context) {
                              return  AlertDialog(
                                title: const Text("Apply"),
                                content:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Leave Type: "+dropdownValue,
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("From Date: " + DateFormat("dd-MM-yyyy").format(DateTime.parse(_value)),
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("To Date: " + DateFormat("dd-MM-yyyy").format(DateTime.parse(_value1)),
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Contact: " + contact,
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Task Assign: " + taskAssign,
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Reason: " + reason,
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Day: " + (difference - int.parse(holidaycount)).toString(),
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  FlatButton(

                                    color: Color(0xff074974),
                                    onPressed: ()async{
                                      // getAPIDATA();
                                      String staff_er =widget.xstaff;

                                      print(staff_er);

                                      print(xyearperdate2);

                                      var response= await http.post(Uri.parse('http://172.20.20.69/api/leaveandtourapplyconfirm.php'),body:
                                      jsonEncode(<String, String>{
                                      //position



                                        "zid": "100060",
                                        "xposition":widget.xposition,
                                        //"xyearperdate":(int.parse(_xyearperdate)+1).toString(),
                                        "xyearperdate": xyearperdate2.toString(),
                                        "xyear":(DateTime.parse(_value).year).toString()  ,
                                        "xstaff":"\'$staff_er\'",
                                        "xtypeleave": "\'$dropdownValue\'"
                                      })
                                      );



                                      var response1= await http.post(Uri.parse('http://172.20.20.69/api/leaveandtourapplyconfirmfinal.php'),body:
                                      jsonEncode(<String, String>{
                                        //position

                                        "zid": "100060",
                                        "user": widget.xposition,
                                        "xposition": widget.xposition,
                                        //"xyearperdate":(int.parse(_xyearperdate)+1).toString(),
                                        "xyearperdate":xyearperdate2.toString(),
                                        "xstaff":"\'$staff_er\'",
                                        "xtypeleave": "Leave"
                                      })
                                      );


                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                      Navigator.pop(context);


                                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage(loginModel: data)));

                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                        content: Text("Leave Applied",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.bakbakOne(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ));

                                      setState(() {
                                        item++;
                                      });
                                      //Navigator.pop(context);
                                      print(response.body);
                                      print(response.statusCode);
                                    },
                                    child: Text("Apply",
                                      style: GoogleFonts.bakbakOne(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                                scrollable: true,
                              );
                            });
                          }
                          },




                        child: Text("Add",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.bakbakOne(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),


                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
