import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/components/EditSkillsContainer.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/components/SkillsChart.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Center(
                      child: Text(
                        "Your skills",
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
                  Image(image: AssetImage("assets/pictures/next.png"))
                ],
              ),
              GestureDetector(
                onTap: () {
                  showCupertinoModalBottomSheet(
                    context: context, builder: (context) => EditSkillsContainer()
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
          SkillsChart(),
        ],
      ),
    );
  }
}
