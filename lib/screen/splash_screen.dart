
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aygazhcm/screen/login_page.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({Key? key}) : super(key: key);

  @override
  _SplashpageState createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: AnimatedSplashScreen(
            duration: 1000,
            splash: Image.asset("images/loading.gif",
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
            ),
            splashIconSize: double.infinity,
            nextScreen: const Login_page(),
            //splashTransition: SplashTransition.decoratedBoxTransition,
            //pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.white,
          )

        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("images/unitedgroup.gif"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        //
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //
        //     FlatButton(
        //       height: 100,
        //       minWidth: 150,
        //       color: Color(0xff074974),
        //       onPressed: (){
        //         Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_page()));
        //       },
        //       child: Text("Login",
        //         style: GoogleFonts.bakbakOne(
        //           // //fontWeight: FontWeight.bold,
        //           fontSize: 25,
        //           color: Colors.white,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),


      ),
    );
  }
}

//
// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:aygazhcm/screen/login_page.dart';
//
// class Splashpage extends StatefulWidget {
//   const Splashpage({Key? key}) : super(key: key);
//
//   @override
//   _SplashpageState createState() => _SplashpageState();
// }
//
// class _SplashpageState extends State<Splashpage> with SingleTickerProviderStateMixin {
//   late AnimationController _animatedController;
//   late Animation<double> _animation;
//
//   @override
//   void dispose() {
//     _animatedController.dispose();
//     super.dispose();
//   }
//
//   @override
//   void initState() {
//     _animatedController =
//         AnimationController(vsync: this, duration: Duration(seconds: 5));
//     _animation =
//     CurvedAnimation(parent: _animatedController, curve: Curves.linear)
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((animationStatus) {
//         if (animationStatus == AnimationStatus.completed) {
//           _animatedController.reset();
//           _animatedController.forward();
//         }
//       });
//     _animatedController.forward();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnimatedSplashScreen(
//         duration: 1200,
//         splashIconSize: double.infinity,
//         splash:  Stack(
//           children: [
//             Image(
//               image: AssetImage('images/United_Group.jpg'),
//               //errorWidget: (context, url, error) => Icon(Icons.error),
//               height: double.infinity,
//               width: double.infinity,
//               fit: BoxFit.cover,
//               alignment: FractionalOffset(_animation.value, 0),
//             ),
//
//
//           ],
//         ), nextScreen: Login_page(),
//       ),
//     );
//   }
//}