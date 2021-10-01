import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joran_app/Screens/SignUpConfirmationScreen/components/Body.dart';

class SignUpConfirmationScreen extends StatelessWidget {
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
      backgroundColor: Color(0XFFEDF1F4),
    );
  }
}
