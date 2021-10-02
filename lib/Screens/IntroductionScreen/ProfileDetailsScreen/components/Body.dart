import 'package:concentric_transition/page_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Screens/IntroductionScreen/PlanSelectionScreen/PlanSelectionScreen.dart';
import 'package:joran_app/Screens/IntroductionScreen/ProfileDetailsScreen/components/Background.dart';
import 'package:joran_app/Screens/IntroductionScreen/ProfileDetailsScreen/components/ProfileForm.dart';
import 'package:joran_app/Screens/IntroductionScreen/ProfileDetailsScreen/components/ProfilePicture.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "About You",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          fontSize: 27.5,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context, ConcentricPageRoute(builder: (ctx) {
                        return PlanSelectionScreen();
                      })),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Icon(Icons.done),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.025),
                ProfilePicture(image: "assets/pictures/user.png"),
                ProfileForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
