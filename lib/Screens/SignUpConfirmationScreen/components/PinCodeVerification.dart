import 'dart:async';

import 'package:concentric_transition/page_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:joran_app/Screens/IntroductionScreen/LetsGetStartedScreen/LetsGetStartedScreen.dart';
import 'package:joran_app/Screens/IntroductionScreen/ProfileDetailsScreen/ProfileDetailsScreen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeVerification extends StatefulWidget {
  const PinCodeVerification({
    Key? key,
    required this.tacCodeController,
    required this.tac,
  }) : super(key: key);

  @override
  _PinCodeVerificationState createState() => _PinCodeVerificationState();

  final TextEditingController tacCodeController;
  final String tac;
}

class _PinCodeVerificationState extends State<PinCodeVerification> {
  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  List<StatelessWidget> pages = [
    LetsGetStarted(), ProfileDetailsScreen(), LetsGetStarted()
  ];

  ToastFuture showNotification(String content) {
    return showToast(
      content,
      context: context,
      animation: StyledToastAnimation.fade,
      reverseAnimation: StyledToastAnimation.fade,
      duration: Duration(seconds: 3),
      position: StyledToastPosition.center,
    );
  }

  Future<void> tacValidation(String email) async {
   // Map<String, dynamic> response = await tacVerification(email, widget.tacCodeController.text);
   //
   // if (response["code"] == 200) {
   //   Provider
   //      .of<StringProvider>(context, listen: false)
   //      .setJWT(response["data"]);

     Navigator.push(context, ConcentricPageRoute(builder: (ctx) {
        return LetsGetStarted();
      }));
   // } else {
   //   widget.tacCodeController.clear();
   //   showNotification("You entered a wrong TAC code!");
   // }
  }



  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // String email = Provider.of<StringProvider>(context).email;

    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: PinCodeTextField(
              appContext: context,
              pastedTextStyle: TextStyle(
                color: Colors.green.shade600,
                fontWeight: FontWeight.bold,
              ),
              length: 4,
              obscureText: true,
              obscuringCharacter: '*',
              obscuringWidget: Icon(
                Icons.circle,
                size: 12,
              ),
              blinkWhenObscuring: true,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeColor: Colors.green.shade600,
                activeFillColor: Colors.white,
                selectedColor: Colors.green.shade600,
                selectedFillColor: Colors.white,
                inactiveColor: Colors.white,
                inactiveFillColor: Colors.white,
                errorBorderColor: Colors.red,
              ),
              cursorColor: Colors.black,
              animationDuration: Duration(milliseconds: 300),
              enableActiveFill: true,
              errorAnimationController: errorController,
              controller: widget.tacCodeController,
              keyboardType: TextInputType.number,
              boxShadows: [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 5,
                )
              ],
              // onCompleted: (v) => tacValidation(email),
              onCompleted: (v) => tacValidation("sad"),
              onChanged: (value) {
                setState(() {
                  currentText = value;
                });
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                return true;
              },
            )
          ),
        ],
      ),
    );
  }
}
