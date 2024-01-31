import 'dart:async';

import 'package:art_app/screen/profileScreens/my_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../main.dart';
import '../../widgets/constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
bool status = true;
class _ProfileScreenState extends State<ProfileScreen> {
  int currentIndex = 0;
  String letter = "";
  bool reverse = false;
  String name = "selene gomerz";

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        if (reverse) {
          if (currentIndex < name.length) {
            letter += name[currentIndex];
            currentIndex++;
          } else {
            reverse = !reverse;
          }
        } else if (letter.isNotEmpty) {
          letter = letter.substring(0, letter.length - 1);
        } else {
          reverse = !reverse;
          currentIndex = 0;
          currentIndex = (currentIndex + 1) % name.length;
          letter = "";
        }
      });
    });
  }


  @override
  Widget build(BuildContext context,) {

    return Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/smallpic.jpg"), 
                      fit: BoxFit.cover)),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter,
                    colors: [
                      // Colors.red,
                      Colors.purple.withOpacity(0.5),
                      Colors.teal.shade800,
                    ]),
              ),
              child:  Stack(
                children: [

                  Align(
                    alignment:Alignment.topCenter,

                    child: const Text(
                      "Profile",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,height: 5),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: mq.height * .48,),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: mq.width * .5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(letter.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color: Colors.white),),
                              Text("I HaPpY LifE", style: TextStyle(color: Colors.white, fontSize: 17),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(height: mq.height *.56,),
                      Container(
                        width: double.infinity,
                        margin:const EdgeInsets.only(left: 20,right: 20,bottom: 20) ,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            ),
                        child:  Padding(
                          padding: const EdgeInsets.all( 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 50,),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 30),
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(25)
                                ),
                                child: const Center(child: Text("emaple@gmail.com",style: TextStyle(color: Color(0xFF6C6C6C)),),),
                              ),
                              const SizedBox(height: 15,),
                              SizedBox(
                                width: double.infinity,
                                child: Text("My Profile",
                                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12, height: 2.5),),
                              ),
                              Container(
                                height: 74,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(19)
                                ),
                                child: ListTile(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyProfileScreen(),));
                                  },
                                  leading: const ImageIcon(AssetImage("assets/images/userIcon.png"),size: 25,),
                                  title: Text("Profile",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Constant.mC),),
                                  subtitle: Text("Tap to edit your profile",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: const Color(0xFF6C6C6C))),
                                  trailing: Icon(Icons.arrow_forward_ios_sharp,size: 15,color: Constant.mC,),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              SizedBox(
                                width: double.infinity,
                                child: Text("My User Setting",
                                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12, height: 2.5),),
                              ),
                              Container(
                                height: 139,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(19),
                                ),
                                child: Center(child: Column(
                                  children: [
                                    SizedBox(
                                      height: 69,
                                      child: ListTile(
                                        onTap: () {
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const MyContactsScreen(),));
                                          },

                                        leading: const Icon(Icons.admin_panel_settings_outlined,size: 25,),
                                        title: Text("Admin Panel",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color:  Constant.mC,),),
                                        subtitle: Text("Manage your app",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: const Color(0xFF6C6C6C)),),
                                        trailing:  Icon(Icons.arrow_forward_ios_sharp,color:  Constant.mC,size: 15,),
                                      ),),
                                    const Divider(indent: 15,endIndent: 15, color: Color(0x49929292), height: 0,),
                                    SizedBox(
                                      height: 69,
                                      child: ListTile(
                                        onTap: () {
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const  MyPlacesScreen(),));
                                          },
                                        leading: const Icon(Icons.favorite_border_outlined,size: 25,),
                                        title: Text("Favorite",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Constant.mC,),),
                                        subtitle: Text("See your favourite items",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: const Color(0xFF6C6C6C)),),
                                        trailing:  Icon(Icons.arrow_forward_ios_sharp,color: Constant.mC,size: 15,),
                                      ),),
                                  ],
                                ),),
                              ),
                              const SizedBox(height: 20,),
                              SizedBox(
                                width: double.infinity,
                                child: Text("Other Settings",
                                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12, height: 2.5),),
                              ),
                              Container(
                                height: 190,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(19),
                                ),
                                child: Center(child: Column(
                                  children: [
                                    SizedBox(
                                      height: 69,
                                      child: ListTile(
                                        onTap: () {},
                                        leading: const ImageIcon(AssetImage("assets/images/bell-1.png"),size: 25,),
                                        title: Text("Notifications",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Constant.mC,),),
                                        subtitle: Text("Turn on/off notifications",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: const Color(0xFF6C6C6C)),),
                                        trailing: Transform.scale(
                                          scaleY:0.6 ,
                                          scaleX: 0.6,
                                          alignment: Alignment.centerRight,
                                          child: Switch(
                                            activeTrackColor: Constant.mC,
                                            value: status,
                                            onChanged: (value) {
                                              setState(() {
                                                status = value;
                                              });
                                            },),
                                        ),
                                      ),),
                                    const Divider(indent: 15, endIndent: 15,color: Color(0x49929292), height: 0,),
                                    SizedBox(
                                      height: 57,
                                      child: ListTile(
                                        onTap: () {
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const LegalInfoScreen(),));
                                          },

                                        leading: const ImageIcon(AssetImage("assets/images/balance.png"),size: 25,),
                                        title: Text("Legal",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color:  Constant.mC,),),
                                        trailing:  Icon(Icons.arrow_forward_ios_sharp,color: Constant.mC,size: 15,),
                                      ),),
                                    const Divider(indent: 15,endIndent: 15, color: Color(0x49929292), height: 0,),
                                    SizedBox(
                                      height: 57 ,
                                      child: ListTile(
                                        onTap: () {
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutSpherScreen(),));
                                          },

                                        leading: const ImageIcon(AssetImage("assets/images/about-tile-icon.png"),size: 25,),
                                        title: Text("About ",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Constant.mC,),),
                                        trailing:  Icon(Icons.arrow_forward_ios_sharp,color: Constant.mC,size: 15,),
                                      ),),
                                  ],
                                ),),
                              ),
                              const SizedBox(height: 35,),
                              Center(
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 174,
                                    height: 36,
                                    decoration: BoxDecoration(
                                        color:  Constant.mC,
                                        borderRadius: BorderRadius.circular(25)),
                                    child: Center(child: Text("Sign Out",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.white),)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Positioned(
                    left: 40,
                    top: mq.height * .5,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                          image: const DecorationImage(
                              image: AssetImage("assets/images/menImage.png"),
                              fit: BoxFit.cover),
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(75)),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ));
  }
}
