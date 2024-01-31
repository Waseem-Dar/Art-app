import 'package:art_app/main.dart';
import 'package:art_app/widgets/constant.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("My Profile",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Constant.mC,
      ),
      body: Column(
        children: [
          Container(
            height: mq.height *.4,
            width: double.infinity,
            color: Colors.grey,
            child: Stack(
              children: [
                Consta
              ],
            ),
          )
        ],
      ),
    );
  }
}
