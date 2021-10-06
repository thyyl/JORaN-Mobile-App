import 'package:flutter/material.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationOverviewScreen/components/Body.dart';

class NotificationOverviewScreen extends StatefulWidget {
  @override
  _NotificationOverviewScreenState createState() => _NotificationOverviewScreenState();
}

class _NotificationOverviewScreenState extends State<NotificationOverviewScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDF1F4),
      body: Body(),
    );
  }
}
