import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesOverviewScreen/components/Body.dart';

class ServicesOverviewScreen extends StatefulWidget {
  @override
  _ServicesOverviewScreenState createState() => _ServicesOverviewScreenState();
}

class _ServicesOverviewScreenState extends State<ServicesOverviewScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDF1F4),
      body: Body(),
    );
  }
}

