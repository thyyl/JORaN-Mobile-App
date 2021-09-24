import 'package:flutter/material.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/UserProfileEditSkillsScreen.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/components/MenuContainerIndividual.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileServiceScreen/UserProfileServiceScreen.dart';
import 'package:page_transition/page_transition.dart';

class MenuContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.475,
      width: size.width * 0.85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MenuIndividualContainer(
                color: Color(0XFFE2C57A),
                title: "Bachelor Degree",
                description: "Bachelor in Biomedical Science",
              ),
              GestureDetector(
                onTap: () => Navigator.push(context, PageTransition(
                    type: PageTransitionType.fade, child: UserProfileServiceScreen())
                ),
                child: MenuIndividualContainer(
                  color: Colors.white,
                  title: "Your Services",
                  description: "Update Your Services",
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MenuIndividualContainer(
                color: Colors.white,
                title: "Your Résumé",
                description: "Upload Your Résumé",
              ),
              SizedBox(height: size.height * 0.035),
              GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => UserProfileEditSkillsScreen()
                )
                ),
                child: Container(
                  width: size.width * 0.375,
                  height: size.height * 0.125,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Center(
                    child: Text(
                      "Your Skills",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.5,
                          fontFamily: "NunitoSans",
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}