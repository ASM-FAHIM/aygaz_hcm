import 'dart:async';
import 'dart:convert';

import 'package:aygazhcm/data_model/loginModel.dart';
import 'package:aygazhcm/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  _Login_pageState createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  late String zemail;
  String xpassword = "";

  bool _obsecureText = true;

  bool isLoading = false;

  Future<void> internetCheck() async {
    final StreamSubscription<InternetConnectionStatus> listener =
        InternetConnectionChecker().onStatusChange.listen(
      (InternetConnectionStatus status) {
        switch (status) {
          case InternetConnectionStatus.connected:
            // ignore: avoid_print
            Get.snackbar('Message',
                "You have access to the internet. However, make sure you're connected to the UG server",
                backgroundColor: Color(0XFF8CA6DB),
                colorText: Colors.white,
                snackPosition: SnackPosition.BOTTOM);
            print('Data connection is available.');
            break;
          case InternetConnectionStatus.disconnected:
            // ignore: avoid_print
            Get.snackbar('Message', 'You are disconnected from the internet.',
                backgroundColor: Color(0XFF8CA6DB),
                colorText: Colors.white,
                snackPosition: SnackPosition.BOTTOM);
            print('You are disconnected from the internet.');
            break;
        }
      },
    );

    // close listener after 30 seconds, so the program doesn't run forever
    await Future<void>.delayed(const Duration(seconds: 30));
    await listener.cancel();
  }

  void toggle() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  late LoginModel data;

  //Hive Database for remember me.
  bool isChecked = false;
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  late Box _box;

  submitData(String zemail, String xpassword) async {
    print(zemail);
    print(xpassword);

    //print(status1);

    var response = await http.post(
        Uri.parse('http://172.20.20.69/aygaz/notifications/loginapi.php'),
        body: jsonEncode(<String, String>{
          "zemail": zemail,
          "xpassword": xpassword,
        }));
    //var data = response.body;
    // print (data);

    data = loginModelFromJson(response.body);

    //print ("return user data\n"+response.body);
    print(response.body);
    print(response.statusCode);
    print(data.zemail);

    if (response.statusCode == 200 && data.xpassword == xpassword) {
      setState(() {
        isLoading = false;
      });
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Homepage(
                    loginModel: data,
                  )));
    } else if (response.statusCode == 200 && data.xpassword != xpassword) {
      Get.snackbar('Error', 'Password Wrong',
          backgroundColor: Color(0XFF8CA6DB),
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM);
    } else if (response.statusCode == 200 && data.zemail != zemail) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Credential Not Match",
          textAlign: TextAlign.center,
          style: GoogleFonts.bakbakOne(
            //fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ));
    }
  }

  Future<List<LoginModel>>? futurePost;

  @override
  void initState() {
    super.initState();
    //hiveopen
    createBox();
    internetCheck();
  }

  //hive createBox function
  void createBox() async {
    _box = await Hive.openBox("RememberMe");
    getData();
  }

  //save hive data
  getData() {
    if (_box.get('user') != null) {
      userController.text = _box.get('user');
    }

    if (_box.get('password') != null) {
      passController.text = _box.get('password');
    }
  }

  //Login button e press korle userID and password ta niye nibe
  void login() {
    if (isChecked) {
      _box.put('user', userController.text);
      _box.put('password', passController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          body: Container(
            child: SingleChildScrollView(
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 5,
                    ),
                    Container(
                      height: 100,
                      width: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('images/orange.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        // decoration: BoxDecoration(
                        //   color: Colors.white,
                        //   border: Border.all(color: Colors.grey),
                        // ),
                        child: TextFormField(
                          controller: userController,
                          style: GoogleFonts.bakbakOne(
                            //fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          onChanged: (input) {
                            zemail = input;
                          },
                          validator: (input) {
                            if (input!.isEmpty) {
                              return "Empty";
                            }
                          },
                          scrollPadding: EdgeInsets.all(20),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 20), // add padding to adjust text
                            isDense: false,
                            hintStyle: GoogleFonts.bakbakOne(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            labelText: "User Name",
                            labelStyle: GoogleFonts.bakbakOne(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(),
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(
                                  top: 8), // add padding to adjust icon
                              child: Icon(Icons.person),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        // decoration: BoxDecoration(
                        //   color: Colors.white,
                        //   border: Border.all(color: Colors.grey),
                        // ),
                        child: TextFormField(
                          controller: passController,
                          style: GoogleFonts.bakbakOne(
                            //fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          obscureText: _obsecureText,
                          onChanged: (input) {
                            xpassword = input;
                          },
                          scrollPadding: EdgeInsets.all(20),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 20), // add padding to adjust text
                            isDense: true,
                            //hintText: "Password",
                            hintStyle: GoogleFonts.bakbakOne(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            labelText: "Password",
                            labelStyle: GoogleFonts.bakbakOne(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(),
                            suffixIcon: Padding(
                                padding: EdgeInsets.only(
                                    top: 8), // add padding to adjust icon
                                child: IconButton(
                                  icon: Icon(
                                    _obsecureText
                                        ? FontAwesomeIcons.solidEye
                                        : FontAwesomeIcons.solidEyeSlash,
                                  ),
                                  onPressed: () {
                                    toggle();
                                  },
                                )),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                          Text(
                            "Remember Me",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bakbakOne(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    // Container(
                    //   height: 40,
                    //   width: MediaQuery.of(context).size.width / 1.2,
                    //   decoration: BoxDecoration(
                    //     color: Color(0xff0C71B2),
                    //     //border: Border.all(color: Colors.grey),
                    //     borderRadius: BorderRadius.circular(10),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.grey.withOpacity(0.5),
                    //         spreadRadius: 1,
                    //         blurRadius: 5,
                    //         offset: Offset(0, 3), // changes position of shadow
                    //       ),
                    //     ],
                    //   ),
                    //   // child: FlatButton(
                    //   //   splashColor: Colors.grey,
                    //   //   shape: RoundedRectangleBorder(
                    //   //       borderRadius: BorderRadius.circular(20.0)),
                    //   //   onPressed: () async {
                    //   //
                    //   //     submitData(
                    //   //         userController.text, passController.text);
                    //   //     login();
                    //   //     debugPrint(userController.text);
                    //   //     debugPrint(passController.text);
                    //   //
                    //   //   },
                    //   //   child: Text(
                    //   //     "Login",
                    //   //     textAlign: TextAlign.center,
                    //   //     style: GoogleFonts.bakbakOne(
                    //   //       fontSize: 20,
                    //   //       color: Colors.white,
                    //   //     ),
                    //   //   ),
                    //   // ),
                    //   child: FlatButton(
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(20.0)),
                    //     onPressed: () async {
                    //       setState(() {
                    //         isLoading = true;
                    //       });
                    //       submitData(userController.text, passController.text);
                    //       login();
                    //     },
                    //     child: isLoading
                    //         ? SizedBox(
                    //             height: 25,
                    //             width: 25,
                    //             child: CircularProgressIndicator(
                    //               color: Colors.white,
                    //             ),
                    //           )
                    //         : Text(
                    //             "Login",
                    //             textAlign: TextAlign.center,
                    //             style: GoogleFonts.bakbakOne(
                    //               fontSize: 20,
                    //               color: Colors.white,
                    //             ),
                    //           ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      elevation: 5,
                      onPressed: () {
                        setState(() {
                          isLoading = true;
                        });
                        submitData(userController.text, passController.text);
                        login();
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(80.0),
                            gradient: new LinearGradient(colors: [
                              // Color(0xff1EAE98),
                              // Color(0xff92EFFD),
                              Color.fromARGB(255, 255, 136, 34),
                              Color.fromARGB(255, 255, 177, 41)
                            ])),
                        padding: const EdgeInsets.all(0),
                        child: isLoading
                            ? SizedBox(
                                height: 25,
                                width: 25,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              )
                            : Text(
                                "Login",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.bakbakOne(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
