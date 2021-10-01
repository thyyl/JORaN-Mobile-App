import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joran_app/Screens/IntroductionScreen/PlanSelectionScreen/components/Body.dart';

class PlanSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0XFF83C5BE)),
        toolbarOpacity: 0,
        backgroundColor: Color(0XFF83C5BE),
        elevation: 0,
      ),
      body: Body(),
    );
  }
}
