import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:joran_app/Provider/StringProvider.dart';
import 'package:joran_app/Screens/SignUpConfirmationScreen/SignUpConfirmationScreen.dart';
import 'package:joran_app/Screens/SignUpScreen/components/SignUpButton.dart';
import 'package:joran_app/Screens/SignUpScreen/components/TextFieldLabel.dart';
import 'package:joran_app/Services/Authentication.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool passwordObscure = true;
  bool confirmPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldLabel(label: "Email"),
            buildEmailFormField(),
            SizedBox(height: size.height * 0.03),
            TextFieldLabel(label: "Password"),
            buildPasswordFormField(),
            SizedBox(height: size.height * 0.03),
            TextFieldLabel(label: "Confirm Password"),
            buildConfirmPasswordFormField(),
            SizedBox(height: size.height * 0.03),
            SignUpButton(
              function: signUpConfirmation,
            )
          ],
        ),
      ),
    );
  }

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

  Future<void> signUpConfirmation() async {
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(_emailController.text);

    if (emailValid) {
      bool strongPassword = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(_passwordController.text);

      if (strongPassword) {
        bool confirmMatch = _passwordController.text == _confirmPasswordController.text;

        if (confirmMatch) {
          Provider
            .of<StringProvider>(context, listen: false)
            .setCredentials(_emailController.text, _passwordController.text);

          http.Response response = await signUpCreatePin(_emailController.text);

          if (response.statusCode == 200) {
            Navigator.push(context, PageTransition(
              type: PageTransitionType.fade,
              child: SignUpConfirmationScreen())
            );

            showNotification("A TAC code has been sent to your email. Please enter the TAC to verify your email");
          }

        } else {
          showNotification("The password does not match.");
        }

      } else {
        showNotification(
          "The password must contain at least 1 upper case, 1 lowercase, "
          "1 numeric, 1 special character with a minimum total of 8 characters."
        );
      }
    } else {
      showNotification("The email is invalid");
    }
  }

  Padding buildConfirmPasswordFormField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.055,
            decoration: buildNeumorphicTextField(),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Confirm your password",
                enabledBorder: outlineBorder(),
                focusedBorder: outlineBorder(),
                hintStyle: TextStyle(
                    fontFamily: "NunitoSans",
                    fontSize: 17.5,
                    fontWeight:
                    FontWeight.w700,
                    color: Colors.black.withOpacity(.25)
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: EdgeInsets.only(top: 20, left: 20),
              ),
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 17.5,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(.5),
              ),
              obscureText: confirmPasswordObscure,
              controller: _confirmPasswordController,
            ),
          ),
          Positioned(
            right: 15,
            top: 10,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  confirmPasswordObscure = !confirmPasswordObscure;
                });
              },
              child: Icon(
                confirmPasswordObscure ? Icons.visibility_rounded : Icons.visibility_off_rounded,
                color: Colors.black.withOpacity(.25),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding buildPasswordFormField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.055,
            decoration: buildNeumorphicTextField(),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your password",
                enabledBorder: outlineBorder(),
                focusedBorder: outlineBorder(),
                hintStyle: TextStyle(
                    fontFamily: "NunitoSans",
                    fontSize: 17.5,
                    fontWeight:
                    FontWeight.w700,
                    color: Colors.black.withOpacity(.25)
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: EdgeInsets.only(top: 20, left: 20),
              ),
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 17.5,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(.5),
              ),
              obscureText: passwordObscure,
              controller: _passwordController,
            ),
          ),
          Positioned(
            right: 15,
            top: 10,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  passwordObscure = !passwordObscure;
                });
              },
              child: Icon(
                passwordObscure ? Icons.visibility_rounded : Icons.visibility_off_rounded,
                color: Colors.black.withOpacity(.25),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding buildEmailFormField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.055,
        decoration: buildNeumorphicTextField(),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Enter your email",
            enabledBorder: outlineBorder(),
            focusedBorder: outlineBorder(),
            hintStyle: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 17.5,
                fontWeight:
                FontWeight.w700,
                color: Colors.black.withOpacity(.25)
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.only(top: 20, left: 20),
          ),
          style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 17.5,
            fontWeight: FontWeight.w700,
            color: Colors.black.withOpacity(.5),
          ),
          controller: _emailController,
        ),
      ),
    );
  }

  BoxDecoration buildNeumorphicTextField() {
    return BoxDecoration(
        color: Color(0XFFEDF1F4),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
              blurRadius: 5.0,
              offset: Offset(-3, -3),
              color: Colors.white.withOpacity(.7)
          ),
          BoxShadow(
              blurRadius: 5.0,
              offset: Offset(3, 3),
              color: Colors.black.withOpacity(.15)
          )
        ]
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: Color(0XFFEDF1F4)),
      gapPadding: 10,
    );
  }
}
