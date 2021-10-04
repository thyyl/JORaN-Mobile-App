import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Screens/IntroductionScreen/ProfileDetailsScreen/components/Background.dart';
import 'package:joran_app/Screens/IntroductionScreen/ProfileDetailsScreen/components/ProfileForm.dart';
import 'package:joran_app/Screens/IntroductionScreen/ProfileDetailsScreen/components/ProfilePicture.dart';
import 'package:joran_app/Screens/IntroductionScreen/ProfileDetailsScreen/components/TopLevelBar.dart';

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
                TopLevelBar(),
                SizedBox(height: size.height * 0.025),
                Container(
                  height: size.height * 0.67,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ProfilePicture(image: "assets/pictures/user.png"),
                        ProfileForm(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


