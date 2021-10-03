import 'package:flutter/material.dart';
import 'package:joran_app/FlashyTabBar.dart';
import 'package:joran_app/Screens/ChatModule/ChatOverviewScreen/ChatOverviewScreen.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/HomeOverviewScreen.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/components/Body.dart';
import '../../NotificationModule/NotificationOverviewScreen/NotificationOverviewScreen.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/UserProfileOverviewScreen.dart';
import 'package:joran_app/constants.dart';
import 'package:page_transition/page_transition.dart';

class JobsOverviewScreen extends StatefulWidget {
  @override
  _JobsOverviewScreenState createState() => _JobsOverviewScreenState();
}

class _JobsOverviewScreenState extends State<JobsOverviewScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
