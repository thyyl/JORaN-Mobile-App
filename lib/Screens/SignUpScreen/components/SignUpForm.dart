import 'package:flutter/material.dart';
import 'package:joran_app/Screens/SignUpScreen/components/LoginButton.dart';
import 'package:joran_app/Screens/SignUpScreen/components/ForgotPassword.dart';
import 'package:joran_app/Screens/SignUpScreen/components/TextFieldLabel.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
            SizedBox(height: size.height * 0.025),
            ForgotPassword(),
            SizedBox(height: size.height * 0.03),
            LoginButton(
              function: () {},
            )
          ],
        ),
      ),
    );
  }

  Padding buildPasswordFormField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.06,
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
            contentPadding: EdgeInsets.all(20),
          ),
          style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black.withOpacity(.5),
          ),
          obscureText: true,
          controller: _passwordController,
        ),
      ),
    );
  }

  Padding buildEmailFormField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.06,
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
            contentPadding: EdgeInsets.all(20),
          ),
          style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 20,
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


