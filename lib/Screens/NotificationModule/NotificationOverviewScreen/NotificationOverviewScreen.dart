import 'package:flutter/material.dart';
import 'package:joran_app/FlashyTabBar.dart';
import 'package:joran_app/Screens/ChatModule/ChatOverviewScreen/ChatOverviewScreen.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/HomeOverviewScreen.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/JobsOverviewScreen.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationOverviewScreen/components/Body.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/UserProfileOverviewScreen.dart';
import 'package:joran_app/constants.dart';
import 'package:page_transition/page_transition.dart';

class NotificationOverviewScreen extends StatefulWidget {
  @override
  _NotificationOverviewScreenState createState() => _NotificationOverviewScreenState();
}

class _NotificationOverviewScreenState extends State<NotificationOverviewScreen> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
