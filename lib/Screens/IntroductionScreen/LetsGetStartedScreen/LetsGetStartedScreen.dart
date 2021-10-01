import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joran_app/Screens/IntroductionScreen/LetsGetStartedScreen/components/Body.dart';

class LetsGetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0XFFE0F3C8)),
        toolbarOpacity: 0,
        backgroundColor: Color(0XFFE0F3C8),
        elevation: 0,
      ),
      body: Body(),
    );
  }
}
