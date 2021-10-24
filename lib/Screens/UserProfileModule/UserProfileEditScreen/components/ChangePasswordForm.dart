import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:joran_app/Provider/StringProvider.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/components/DoneButton.dart';
import 'package:joran_app/Services/Authentication.dart';
import 'package:provider/provider.dart';

class ChangePasswordForm extends StatefulWidget {

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
   final _oldPasswordController = TextEditingController();

   final _newPasswordController = TextEditingController();

   bool oldObscure = true;
   bool newObscure = true;

   Future<void> passwordChangeValidation() async {
    String jwt = Provider.of<StringProvider>(context, listen: false).jwt;

    bool strongPassword = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(_newPasswordController.text);

    if (strongPassword) {
      try {
        Map<String, dynamic> response =
        await userUpdatePassword(jwt, _oldPasswordController.text, _newPasswordController.text);

        if (response["code"] == 200) {
          showNotification("Password has been updated.");
        }
      } on Exception {
        showNotification("Wrong password entered!");
      }
    } else {
      showNotification(
        "The password must contain at least 1 upper case, 1 lowercase, "
        "1 numeric, 1 special character with a minimum total of 8 characters."
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.8,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Center(
                  child: Container(
                    height: size.height * 0.005,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Change Password",
                  style: TextStyle(
                      fontFamily: "NunitoSans",
                      color: Color(0XFF76787A),
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      decoration: TextDecoration.none
                  ),
                ),
              ),
              Divider(),
              SizedBox(height: size.height * 0.025),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Old Password",
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          color: Color(0XFF76787A),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.5,
                          decoration: TextDecoration.none
                      ),
                    ),
                    SizedBox(height: 5),
                    buildOldPasswordField(context),
                    SizedBox(height: size.height * 0.025),
                    Text(
                      "New Password",
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          color: Color(0XFF76787A),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.5,
                          decoration: TextDecoration.none
                      ),
                    ),
                    buildNewPasswordField(context),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.025),
              DoneButton(
                function: passwordChangeValidation,
              )
            ],
          ),
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

  Card buildOldPasswordField(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Card(
      shadowColor: Colors.transparent,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.055,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              obscureText: oldObscure,
              decoration: InputDecoration(
                hintText: "Please enter your password",
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
                contentPadding: EdgeInsets.only(top: 20, left: 10),
              ),
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 17.5,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(.5),
              ),
              controller: _oldPasswordController,
            ),
          ),
          Positioned(
            right: 15,
            top: 10,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  oldObscure = !oldObscure;
                });
              },
              child: Icon(
                oldObscure ? Icons.visibility_rounded : Icons.visibility_off_rounded,
                color: Colors.black.withOpacity(.25),
              ),
            ),
          )
        ],
      ),
    );
  }

  Card buildNewPasswordField(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Card(
      shadowColor: Colors.transparent,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.055,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              obscureText: newObscure,
              decoration: InputDecoration(
                hintText: "Please enter a new password",
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
                contentPadding: EdgeInsets.only(top: 20, left: 10),
              ),
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 17.5,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(.5),
              ),
              controller: _newPasswordController,
            ),
          ),
          Positioned(
            right: 15,
            top: 10,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  newObscure = !newObscure;
                });
              },
              child: Icon(
                newObscure ? Icons.visibility_rounded : Icons.visibility_off_rounded,
                color: Colors.black.withOpacity(.25),
              ),
            ),
          )
        ],
      ),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: Colors.transparent),
      gapPadding: 10,
    );
  }
}
