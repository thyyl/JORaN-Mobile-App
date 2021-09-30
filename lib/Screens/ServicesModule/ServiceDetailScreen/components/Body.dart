import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/components/Background.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/components/RatingsRow.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/components/SkillsContainer.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/components/TopLevelBar.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Background(
          children: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TopLevelBar(),
                SizedBox(height: size.height * 0.025),
                ProfileDetail(),
                SizedBox(height: size.height * 0.015),
                RatingsRow(),
                SizedBox(height: size.height * 0.025),
                SkillsContainer()
              ],
            ),
          ),
        )
    );
  }
}

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
          padding: const EdgeInsets.only(top: 30.0),
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
                    fontSize: 25,
                  ),
                ),
                Text(
                  "C++ Assignment",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF76787A),
                    fontFamily: "NunitoSans",
                    fontSize: 17.5,
                  ),
                ),
                Text(
                  "RM 50 / service",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF76787A),
                    fontFamily: "NunitoSans",
                    fontSize: 17.5,
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




