import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joran_app/Screens/LogInScreen/components/Body.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0XFFEDF1F4)),
        toolbarOpacity: 0,
        backgroundColor: Color(0XFFEDF1F4),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Body(),
    );
  }
}
