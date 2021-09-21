import 'package:flutter/material.dart';
import 'package:joran_app/FlashyTabBar.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/components/Body.dart';

class UserProfileOverviewScreen extends StatefulWidget {
  @override
  _UserProfileOverviewScreenState createState() => _UserProfileOverviewScreenState();
}

class _UserProfileOverviewScreenState extends State<UserProfileOverviewScreen> {
  int _selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        backgroundColor: Colors.white,
        showElevation: true,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text('Jobs'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.chat),
            title: Text('Chat'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.home_rounded),
            title: Text('Home'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Reminder'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.supervised_user_circle_rounded),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}

