import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {},
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
