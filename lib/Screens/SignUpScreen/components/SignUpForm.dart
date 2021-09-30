import 'package:flutter/material.dart';
import 'package:joran_app/Screens/SignUpConfirmationScreen/SignUpConfirmationScreen.dart';
import 'package:joran_app/Screens/SignUpScreen/components/SignUpButton.dart';
import 'package:joran_app/Screens/SignUpScreen/components/TextFieldLabel.dart';
import 'package:page_transition/page_transition.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String statusSelection = "Normal";
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
            TextFieldLabel(label: "Status"),
            buildStatusFormField(),
            SizedBox(height: size.height * 0.05),
            SignUpButton(
              function: () {
                Navigator.push(context, PageTransition(
                    type: PageTransitionType.fade, child: SignUpConfirmationScreen())
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Padding buildStatusFormField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: buildNeumorphicTextField(),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: statusSelection,
            onChanged: (dynamic newValue) {
              setState(() {
                statusSelection = newValue;
              });
            },
            items: <String>['Normal', 'Entrepreneur'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    value,
                    style: TextStyle(
                      fontFamily: "NunitoSans",
                      fontSize: 17.5,
                      fontWeight: FontWeight.w700,
                      color: Colors.black.withOpacity(.5),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
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
              child: Image(
                image: AssetImage("assets/pictures/visible.png"),
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
              child: Image(
                image: AssetImage("assets/pictures/visible.png"),
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
