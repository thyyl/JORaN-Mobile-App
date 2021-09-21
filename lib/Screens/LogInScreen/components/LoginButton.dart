import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.function,
  }) : super(key: key);

  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: GestureDetector(
        onTap: function,
        child: Container(
          width: size.width * 0.35,
          height: size.height * 0.05,
          decoration: BoxDecoration(
              color: Color(0XFF87A5A6),
              borderRadius: BorderRadius.circular(15.0)
          ),
          child: Center(
            child: Text(
              "Log In",
              style: TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontSize: 20,
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}