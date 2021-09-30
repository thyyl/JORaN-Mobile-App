import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
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

  void tacValidation() {
    if (widget.tac != widget.tacCodeController.text) {
      setState(() {
        hasError = true;
        widget.tacCodeController.clear();
      });
      showNotification("You entered a wrong TAC code!");

    } else {
      showNotification("nice!");
    }
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
              onCompleted: (v) => tacValidation(),
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
