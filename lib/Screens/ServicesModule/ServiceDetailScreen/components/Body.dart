import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/components/Background.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/components/DetailContainer.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/components/ProfileContainer.dart';
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
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopLevelBar(),
                SizedBox(height: size.height * 0.05),
                CarouselSlider(
                  options: CarouselOptions(
                    height: size.height * 0.475,
                    viewportFraction: 0.85,
                  ),
                  items: [1, 2, 3].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        if (i == 1) {
                          return ProfileContainer(
                            image: "assets/pictures/user.jpg",
                            function: () {},
                          );
                        } else if (i == 2) {
                          return DetailContainer(
                            image: "assets/pictures/user.jpg",
                            name: "Abigail Sarah Williams",
                            category: "Computer Science",
                            title: "C++ Assignment",
                            fee: "RM 50 / service",
                            location: "USM, Penang",
                          );
                        } else {
                          return Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                    image: AssetImage("assets/pictures/user.jpg"),
                                    width: size.width * 0.75,
                                    fit: BoxFit.cover,
                                  ),
                                  // TODO FADE IN IMAGE FOR USER PROFILE
                                  // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image)
                                ),
                              ),
                              GlassmorphicContainer(
                                width: size.width * 0.75,
                                height: size.height * 0.175,
                                borderRadius: 20,
                                blur: 50,
                                alignment: Alignment.bottomCenter,
                                border: 0,
                                linearGradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFFffffff).withOpacity(0.1),
                                      Color(0xFFFFFFFF).withOpacity(0.05),
                                    ],
                                    stops: [
                                      0.1,
                                      1,
                                    ]),
                                borderGradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFFffffff).withOpacity(0.5),
                                    Color((0xFFFFFFFF)).withOpacity(0.5),
                                  ],
                                ),
                                child: SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "About",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontFamily: "NunitoSans",
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontFamily: "NunitoSans",
                                              fontWeight: FontWeight.bold
                                          ),
                                          textAlign: TextAlign.justify,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ),
                            ],
                          );
                        }
                      },
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        )
    );
  }
}




