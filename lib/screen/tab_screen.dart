import 'package:art_app/screen/home_screen.dart';
import 'package:art_app/screen/profileScreens/profile_screen.dart';
import 'package:art_app/screen/users_screen.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/constant.dart';
import 'influence_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}
int _currentIndex = 0;
final List _tabs = [
  const HomeScreen(),
  const UsersScreen(),
  const InfluencerScreen(),
  const ProfileScreen(),
];
class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BottomNavigationBar(
            elevation: 0,
            unselectedIconTheme: const IconThemeData(color: Color.fromRGBO(108, 108, 108, 1)),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type:BottomNavigationBarType.fixed ,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items:  [
              BottomNavigationBarItem(label: 'Home',
                  icon: _currentIndex == 0?
                   ImageIcon(AssetImage("assets/images/home.png"),size:25,color: Constant.mC)
                      :const ImageIcon(AssetImage("assets/images/home2.png"),size: 20, )),
              BottomNavigationBarItem(label: 'Chats',
                  icon: _currentIndex == 1?
                   ImageIcon(AssetImage("assets/images/bubble-chat.png"),size: 25,color: Constant.mC,)
                      :const ImageIcon(AssetImage("assets/images/bubble-2.png"),size: 25,)),
              BottomNavigationBarItem(label: 'Social',
                icon: _currentIndex == 2 ?
                 ImageIcon(AssetImage("assets/images/influencer-2.png"),size: 25,color: Constant.mC)
                    :const ImageIcon(AssetImage("assets/images/influencer.png"),size: 25,),
              ),
              BottomNavigationBarItem(label: 'Profile',
                  icon: _currentIndex == 3 ?
                   ImageIcon(AssetImage("assets/images/user-outline.png"),size: 23,color: Constant.mC)
                      :const ImageIcon(AssetImage("assets/images/userIcon.png"),size: 23,)
              ),
            ]),
      ),
    );
  }}