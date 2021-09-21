import 'package:flutter/material.dart';
import 'package:joran_app/Screens/SignUpScreen/SignUpScreen.dart';


class SignUpLogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      height: size.height * 0.06,
      decoration: BoxDecoration(
          color: Color(0XFFEDF1F4),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
                blurRadius: 5.0,
                offset: Offset(-3, -3),
                color: Colors.white.withOpacity(0.75)
            ),
            BoxShadow(
                blurRadius: 5.0,
                offset: Offset(3, 3),
                color: Colors.black.withOpacity(0.15)
            ),
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => SignUpScreen()
              ));
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              width: size.width * 0.38,
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color(0XFF76787A),
                    fontFamily: "NunitoSans",
                    fontSize: 22.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          VerticalDivider(thickness: 1.5),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            width: size.width * 0.38,
            child: Center(
              child: Text(
                "Log In",
                style: TextStyle(
                  color: Color(0XFF76787A),
                  fontFamily: "NunitoSans",
                  fontSize: 22.5,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}