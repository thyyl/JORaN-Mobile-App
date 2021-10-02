import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/components/Background.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/components/ProfileDetail.dart';
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
          children: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TopLevelBar(),
                  SizedBox(height: size.height * 0.025),
                  ProfileDetail(),
                  SizedBox(height: size.height * 0.01),
                  RatingsRow(),
                  SizedBox(height: size.height * 0.01),
                  SkillsContainer()
                ],
              ),
            ),
          ),
        )
    );
  }
}






