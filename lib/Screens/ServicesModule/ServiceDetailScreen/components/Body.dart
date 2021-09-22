import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/components/Background.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/components/TopLevelBar.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Background(
          children: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopLevelBar(),
                    SizedBox(height: size.height * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimatedContainer(
                          duration: Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                          height: size.height * 0.45,
                          width: size.width * 0.7,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100.0),
                                ),
                                child: Image(
                                  image: AssetImage("assets/pictures/user.jpg"),
                                  width: size.width * 0.7,
                                  fit: BoxFit.cover,
                                ),
                                // TODO FADE IN IMAGE FOR USER PROFILE
                                // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image)
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.35,
                                    decoration: BoxDecoration(
                                        color: Color(0XFF87A5A6),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30.0)
                                        )
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Apply Now!",
                                        style: TextStyle(
                                            color: Color(0XFFFFFFFF),
                                            fontSize: 17.5,
                                            fontFamily: "NunitoSans",
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 20.0),
                                    child: Container(
                                      width: size.width * 0.7,
                                      height: _counter == 0 ? 0 : size.height * 0.125,
                                      child: Center(
                                        child: (() {
                                          if (_counter == 1) {
                                            return Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Abigail Sarah Williams",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "NunitoSans",
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                Text(
                                                  "C++ Assignment",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "NunitoSans",
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ],
                                            );
                                          } else {
                                            return Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                                              child: SingleChildScrollView(
                                                physics: BouncingScrollPhysics(),
                                                child: Text(
                                                  "Testing",
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "NunitoSans",
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                        } ())
                                      ),
                                    ),
                                  ),
                                )
                              )
                            ],
                          )
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  right: -140,
                  top: 250,
                  child: Transform.rotate(
                    angle: -pi / 2,
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      width: size.width * 0.825,
                      height: size.height * 0.075,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _counter = 2;
                              });
                            },
                            child: Text(
                              "About",
                              style: TextStyle(
                                  fontFamily: "NunitoSans",
                                  fontSize: 25,
                                  fontWeight: _counter == 2 ? FontWeight.w900 : FontWeight.w700,
                                  color: _counter == 2 ? Color(0XFF75AABC) : Colors.grey.shade400
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _counter = 1;
                              });
                            },
                            child: Text(
                              "Service",
                              style: TextStyle(
                                  fontFamily: "NunitoSans",
                                  fontSize: 25,
                                  fontWeight: _counter == 1 ? FontWeight.w900 : FontWeight.w700,
                                  color: _counter == 1 ? Color(0XFF75AABC) : Colors.grey.shade400
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _counter = 0;
                              });
                            },
                            child: Text(
                              "Profile",
                              style: TextStyle(
                                  fontFamily: "NunitoSans",
                                  fontSize: 25,
                                  fontWeight: _counter == 0 ? FontWeight.w900 : FontWeight.w700,
                                  color: _counter == 0 ? Color(0XFF75AABC) : Colors.grey.shade400
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

