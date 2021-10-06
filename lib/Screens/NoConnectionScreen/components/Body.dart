import 'package:flutter/material.dart';
import 'package:joran_app/Screens/SplashScreen/components/Background.dart';
import 'package:lottie/lottie.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: Container(
          width: size.width,
          height: size.height,
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * 0.5,
                    child: Lottie.asset("assets/flare/NoConnection.json"),
                  ),
                  Text(
                    "Connection lost.\nPlease try again later.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0XFF1F1B58),
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}
