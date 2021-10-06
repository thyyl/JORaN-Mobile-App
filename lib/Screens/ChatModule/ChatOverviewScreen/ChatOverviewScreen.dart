import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ChatModule/ChatOverviewScreen/components/Body.dart';

class ChatOverviewScreen extends StatefulWidget {
  @override
  _ChatOverviewScreenState createState() => _ChatOverviewScreenState();
}

class _ChatOverviewScreenState extends State<ChatOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDF1F4),
      body: Body(),
    );
  }
}
