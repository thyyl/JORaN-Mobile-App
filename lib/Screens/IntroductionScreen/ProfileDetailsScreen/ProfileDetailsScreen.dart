import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joran_app/Screens/IntroductionScreen/ProfileDetailsScreen/components/Body.dart';

class ProfileDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0XFFC7E9F3),
          statusBarIconBrightness: Brightness.dark
        ),
        toolbarOpacity: 0,
        backgroundColor: Color(0XFFC7E9F3),
        elevation: 0,
      ),
      backgroundColor: Color(0XFFC7E9F3),
      body: Body(),
    );
  }
}
