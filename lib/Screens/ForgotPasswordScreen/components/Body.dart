import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ForgotPasswordScreen/components/Background.dart';
import 'package:joran_app/Screens/ForgotPasswordScreen/components/LogoContainer.dart';
import 'package:joran_app/Screens/ForgotPasswordScreen/components/ResetPasswordForm.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LogoContainer(),
              SizedBox(height: size.height * 0.05),
              Container(
                height: size.height * 0.2,
                child: Image(image: AssetImage("assets/pictures/service.png"))
              ),
              SizedBox(height: size.height * 0.05),
              Text(
                "Forgot your password?\nReset it now!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0XFF76787A),
                    fontSize: 20,
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: size.height * 0.03),
              ResetPasswordForm(),
            ],
          ),
        )
      ),
    );
  }
}
