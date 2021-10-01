import 'package:flutter/material.dart';

class GoogleSignUpButton extends StatelessWidget {
  const GoogleSignUpButton({
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
          width: size.width * 0.475,
          height: size.height * 0.05,
          decoration: BoxDecoration(
            color: Color(0XFFF9F9F9),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                offset: Offset(-1.5, 1.5),
                blurRadius: 2.5,
                color: Colors.black.withOpacity(0.25)
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(image: AssetImage("assets/logo/google.png"),),
                Text(
                  "Google",
                  style: TextStyle(
                      color: Color(0XFF76787A),
                      fontSize: 20,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.bold
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}