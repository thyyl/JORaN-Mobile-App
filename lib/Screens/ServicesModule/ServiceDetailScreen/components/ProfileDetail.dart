import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: size.height * 0.25,
          width: size.width * 0.4,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                image: AssetImage("assets/pictures/user.jpg"),
                fit: BoxFit.cover,
              )
          ),
          // TODO FADE IN IMAGE FOR USER PROFILE
          // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Abigail Sarah Williams",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: "NunitoSans",
                    fontSize: 22.5,
                  ),
                ),
                Text(
                  "+6014-2327474",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF76787A),
                    fontFamily: "NunitoSans",
                    fontSize: 15,
                  ),
                ),
                Text(
                  "C++ Assignment",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF76787A),
                    fontFamily: "NunitoSans",
                    fontSize: 15,
                  ),
                ),
                Text(
                  "RM 50 / service",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF76787A),
                    fontFamily: "NunitoSans",
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}