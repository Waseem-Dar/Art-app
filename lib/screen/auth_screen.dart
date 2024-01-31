import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';
import '../widgets/constant.dart';




class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  // _googlebtnclick() {
  //   Dialogs.showProgressBar(BuildContext, context);
  //   _signInWithGoogle().then((user) async {
  //     Navigator.pop(context);
  //     if(user != null){
  //       // log('\nuser : ${user.user}');
  //       // log('\nuserinfo : ${user.additionalUserInfo}');
  //       if(( await Apis.userExists())){
  //         Navigator.pushReplacement(
  //             context,
  //             MaterialPageRoute(
  //               builder: (context) => const HomePage(),
  //             ));
  //       }else{
  //         await Apis.createUser().then((value) {
  //           Navigator.pushReplacement(
  //               context,
  //               MaterialPageRoute(
  //                 builder: (context) => const HomePage(),
  //               ));
  //         });
  //       }
  //
  //     }
  //     // else{}
  //   });
  // }
  //
  // Future<UserCredential?> _signInWithGoogle() async {
  //   try{
  //     InternetAddress.lookup('google.com');
  //
  //     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //
  //     final GoogleSignInAuthentication? googleAuth =
  //     await googleUser?.authentication;
  //
  //     final credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth?.accessToken,
  //       idToken: googleAuth?.idToken,
  //     );
  //
  //     return await Apis.auth.signInWithCredential(credential);
  //   }catch(e){
  //     log('\n_signInWithGoogle :$e');
  //     Dialogs.showSnackBar(context, "Something wrong check internet !");
  //     return null;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.mC,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: mq.height *.10,
            ),
            Container(
              width:200,
                child: Image.asset("assets/images/logo1.png")),
            Text(
                "QALAM ARTS",
                style: GoogleFonts.creepster(fontSize: 50,color:Colors.white,letterSpacing: 2,fontWeight: FontWeight.w600)
            ),
            const Expanded(child: SizedBox()),
            Container(
              margin:  EdgeInsets.symmetric(horizontal: mq.width *.1),
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: () {
                    // _googlebtnclick();
                  },
                  child: const Text(
                    "Sign In with Google",
                    style: TextStyle(fontSize: 16,color: Colors.black),
                  )),
            ),
            SizedBox(height: mq.height * .1,)
          ],
        ),
      ),
    );
  }
}
