import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Screens/LogInScreen/components/Background.dart';
import 'package:joran_app/Screens/LogInScreen/components/GoogleLogInButton.dart';
import 'package:joran_app/Screens/LogInScreen/components/LogoContainer.dart';
import 'package:joran_app/Screens/LogInScreen/components/OrDivider.dart';
import 'package:joran_app/Screens/LogInScreen/components/LoginForm.dart';
import 'package:joran_app/Screens/LogInScreen/components/SignUpLogin.dart';

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
              SizedBox(height: size.height * 0.05),
              LoginForm(),
              SizedBox(height: size.height * 0.025),
              OrDivider(),
              SizedBox(height: size.height * 0.025),
              GoogleLoginButton(
                function: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

