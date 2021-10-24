import 'package:flutter/material.dart';
import 'package:joran_app/Screens/SignUpConfirmationScreen/components/PinCodeVerification.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final tacCodeController = TextEditingController();

    return SafeArea(
      child: Container(
        height: size.height,
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
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
                      "We have sent a TAC code to your email. Please enter the TAC code below."
                      " You could paste TAC codes by long pressing it.",
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
                  PinCodeVerification(
                    tac: "2323",
                    tacCodeController: tacCodeController
                  ),
                  SizedBox(height: size.height * 0.025),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Didn't receive the code? ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: "NunitoSans",
                        color: Color(0XFF76787A),
                      ),
                      children: [
                        TextSpan(
                          text: " RESEND!",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            fontFamily: "NunitoSans",
                            color: Color(0XFF76787A),
                          ),
                        )
                      ]
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
