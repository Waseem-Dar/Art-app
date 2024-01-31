import 'dart:async';

import 'package:art_app/screen/tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';
import '../widgets/constant.dart';
import 'auth_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 100), () async {
      setState(() {
        isAnimate = true;
      });
      Timer(const Duration(seconds: 3), () {
        // if (FirebaseAuth.instance.currentUser != null) {
        //
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const TabScreen(),
              ));
        // } else {
        //   Navigator.pushReplacement(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => const AuthScreen(),
        //       ));
        // }
      });
    });
  }

  bool isAnimate = false;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:  Constant.mC,
      body: Stack(
        children: [
          AnimatedPositioned(
              right: isAnimate ? mq.width * .25 : mq.width * -.70,
              top: mq.height * .35,
              width: mq.width * .50,
              duration: const Duration(seconds: 2),
              child: Center(child: Image.asset("assets/images/logo1.png"))),
          AnimatedPositioned(
              left: isAnimate ? mq.width * .10 : mq.width * -.70,
              top: mq.height * .55,
              width: mq.width * .80,
              duration: const Duration(seconds: 2),
              child:  Center(
                child: Text(
                  "QALAM ARTS",
                  style: GoogleFonts.creepster(fontSize: 45,color:Colors.white,letterSpacing: 2,fontWeight: FontWeight.w600)
                ),
              )),
        ],
      ),
    );
  }
}
