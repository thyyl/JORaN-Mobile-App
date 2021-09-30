import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/components/SkillsChart.dart';

class SkillsContainer extends StatefulWidget {
  @override
  _SkillsContainerState createState() => _SkillsContainerState();
}

class _SkillsContainerState extends State<SkillsContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                        "Skills Presented",
                        style: TextStyle(
                            fontFamily: "NunitoSans",
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SkillsChart(),
        ],
      ),
    );
  }



}
