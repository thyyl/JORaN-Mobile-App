import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radar_chart/radar_chart.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class SkillsContainer extends StatefulWidget {
  @override
  _SkillsContainerState createState() => _SkillsContainerState();
}

class _SkillsContainerState extends State<SkillsContainer> {
  List<double> values = [0.7, 0.8, 0.65, 0.65, 0.65, 0.65];
  int skillsIndex = 0;
  int skillsLength = 6;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Center(
                      child: Text(
                        "C++ Programming",
                        style: TextStyle(
                            fontFamily: "NunitoSans",
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: size.width * 0.02),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        skillsIndex = (skillsIndex + 1) % skillsLength;
                      });
                    },
                    child: Image(image: AssetImage("assets/pictures/next.png"))
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  showCupertinoModalBottomSheet(
                    context: context, builder: (context) => editSkillsContainer()
                  );
                },
                child: Text(
                  "Edit Skills",
                  style: TextStyle(
                    color: Color(0XFF5783C3),
                    fontFamily: "NunitoSans",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          AnimatedContainer(
            height: size.height * 0.235,
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 100,
                  child: RadarChart(
                    radius: 100,
                    length: 6,
                    initialAngle: pi / 6,
                    borderStroke: 0.5,
                    borderColor: Colors.grey.withOpacity(0.4),
                  ),
                ),
                Positioned(
                  top: 75,
                  child: RadarChart(
                    radius: 125,
                    length: 6,
                    initialAngle: pi / 6,
                    borderStroke: 0.5,
                    borderColor: Colors.grey.withOpacity(0.4),
                  ),
                ),
                Positioned(
                  top: 50,
                  child: RadarChart(
                    radius: 150,
                    length: 6,
                    initialAngle: pi / 6,
                    borderStroke: 1,
                    borderColor: Colors.grey.withOpacity(0.4),
                    radialStroke: 0.5,
                    radialColor: Colors.grey.withOpacity(0.4),
                    radars: [
                      RadarTile(
                        values: [0.2, 0.8, 0.65, 0.65, values[skillsIndex], 0.65],
                        borderStroke: 2,
                        borderColor: Color(0XFF2DB6F5),
                        backgroundColor: Color(0XFF2DB6F5).withOpacity(0.3),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 15,
                  child: Text(
                    (values[skillsIndex] * 100).toString() + "%",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF607D8B)
                    ),
                  ),
                )
              ],
            )

          )
        ],
      ),
    );
  }

  Container editSkillsContainer() {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.35,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Edit Skills",
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
            SizedBox(height: size.height * 0.1),
            Text(
              "Name",
              style: TextStyle(
                fontFamily: "NunitoSans",
                color: Color(0XFF76787A),
                fontWeight: FontWeight.w600,
                fontSize: 17.5,
                decoration: TextDecoration.none
              ),
            ),

          ],
        ),
      ),
    );
  }
}
