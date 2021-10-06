import 'package:flutter/material.dart';
import 'package:joran_app/Screens/HomeModule/HomeOverviewScreen/components/Body.dart';


class HomeOverviewScreen extends StatefulWidget {
  @override
  _HomeOverviewScreenState createState() => _HomeOverviewScreenState();
}

class _HomeOverviewScreenState extends State<HomeOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDF1F4),
      body: Body(),
    );
  }
}
