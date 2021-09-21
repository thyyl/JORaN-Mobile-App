import 'package:flutter/material.dart';
import 'package:joran_app/Screens/SignUpConfirmationScreen/components/Button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/pictures/verified.png")),
            SizedBox(height: size.height * 0.025),
            Text(
              "Verification Sent!",
              style: TextStyle(
                color: Color(0XFF76787A),
                fontFamily: "NunitoSans",
                fontSize: 27.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
              child: Text(
                "Please wait while we try and verify your identity. We will notify through your email.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF76787A),
                  fontFamily: "NunitoSans",
                  fontSize: 17.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Button(
              function: () => Navigator.pop(context)
            )
          ],
        ),
      ),
    );
  }
}
