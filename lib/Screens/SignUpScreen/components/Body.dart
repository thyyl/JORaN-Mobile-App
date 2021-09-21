import 'package:flutter/material.dart';
import 'package:joran_app/Screens/SignUpScreen/components/Background.dart';
import 'package:joran_app/Screens/SignUpScreen/components/LogoContainer.dart';
import 'package:joran_app/Screens/SignUpScreen/components/SignUpForm.dart';
import 'package:joran_app/Screens/SignUpScreen/components/SignUpLogin.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              LogoContainer(),
              SizedBox(height: size.height * 0.05),
              SignUpLogIn(),
              SizedBox(height: size.height * 0.03),
              SignUpForm(),
            ],
          ),
        ),
      )
    );
  }
}
