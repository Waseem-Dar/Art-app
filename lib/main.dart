import 'package:art_app/screen/profileScreens/profile_screen.dart';
import 'package:art_app/screen/splash_screen.dart';
import 'package:art_app/screen/tab_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 late Size mq;
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TabScreen(),
    );
  }
}





