import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationOverviewScreen/components/Body.dart';

class NotificationOverviewScreen extends StatefulWidget {
  @override
  _NotificationOverviewScreenState createState() => _NotificationOverviewScreenState();
}

class _NotificationOverviewScreenState extends State<NotificationOverviewScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color(0XFFEDF1F4),
            statusBarIconBrightness: Brightness.dark
        ),
        toolbarHeight: 0,
        toolbarOpacity: 0,
        backgroundColor: Color(0XFFEDF1F4),
        elevation: 0,
      ),
      backgroundColor: Color(0XFFEDF1F4),
      body: Body(),
    );
  }
}
