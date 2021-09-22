import 'package:flutter/material.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/components/AboutYouContainer.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/components/Background.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileEditSkillsScreen/components/TopLevelBar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Background(
          children: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopLevelBar(),
                SizedBox(height: size.height * 0.05),
                Container(
                  height: size.height * 0.325,
                  width: size.width * 0.5,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        image: AssetImage("assets/pictures/user.jpg"),
                        fit: BoxFit.cover,
                      )
                  ),
                  // TODO FADE IN IMAGE FOR USER PROFILE
                  // child: FadeInImage.assetNetwork(placeholder: placeholder, image: image),
                ),
                SizedBox(height: size.height * 0.025),
                AboutYouContainer(description: "Testing"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

