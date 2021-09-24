import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ForgotPasswordScreen/ForgotPasswordScreen.dart';
import 'package:page_transition/page_transition.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => Navigator.push(context, PageTransition(
            type: PageTransitionType.fade, child: ForgotPasswordScreen())
        ),
        child: Text(
          "Forgot Password",
          style: TextStyle(
              color: Color(0XFFCACBCB),
              fontSize: 15,
              fontFamily: "NunitoSans",
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
