import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Screens/IntroductionScreen/LetsGetStartedScreen/components/Background.dart';
import 'package:joran_app/Screens/IntroductionScreen/ProfileDetailsScreen/ProfileDetailsScreen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, ConcentricPageRoute(builder: (ctx) {
            return ProfileDetailsScreen();
          }));
        },
        child: Background(
          children: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.4,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 275,
                          width: 275,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                            shape: BoxShape.circle
                          ),
                        ),
                      ),
                      Image(image: AssetImage("assets/pictures/Start.png")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Let's get started!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "We'll need some details of you. Please tap anywhere except the white circle to continue.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black45,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
