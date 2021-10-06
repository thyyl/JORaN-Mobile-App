import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:joran_app/Models/SkillsModel.dart';
import 'package:joran_app/Provider/SkillsProvider.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/components/EditSkillsContainer.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/components/SkillsChart.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SkillsContainer extends StatefulWidget {
  @override
  _SkillsContainerState createState() => _SkillsContainerState();
}

class _SkillsContainerState extends State<SkillsContainer> {
  @override
  Widget build(BuildContext context) {
    List<Skills> skillsSelectionList = Provider.of<SkillsProvider>(context).skillList;
    Size size = MediaQuery.of(context).size;

    ToastFuture showNotification(String content) {
      return showToast(
        content,
        context: context,
        animation: StyledToastAnimation.fade,
        reverseAnimation: StyledToastAnimation.fade,
        duration: Duration(seconds: 3),
        position: StyledToastPosition.center,
      );
    }

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
                  if (skillsSelectionList.isNotEmpty) {
                    showCupertinoModalBottomSheet(
                        context: context, builder: (context) => EditSkillsContainer(
                      firstSkill: skillsSelectionList.first,
                    ));
                  } else {
                    showNotification("There is nothings to be edited");
                  }
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
