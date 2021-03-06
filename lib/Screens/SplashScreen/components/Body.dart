import 'package:flutter/material.dart';
import 'package:joran_app/Screens/LogInScreen/LogInScreen.dart';
import 'package:joran_app/Screens/SplashScreen/components/Background.dart';
import 'package:page_transition/page_transition.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: Container(
          width: size.width,
          height: size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(context, PageTransition(
                    type: PageTransitionType.fade, child: LogInScreen())
                  ),
                  child: Image(image: AssetImage("assets/logo/joranLogo.png"))
                ),
                SizedBox(height: size.height * 0.025),
                Text(
                  "JORaN",
                  style: TextStyle(
                    color: Color(0XFF1F1B58),
                    fontFamily: "NunitoSans",
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Text(
                  "Job Opportunities Recruitment And Networking",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0XFF1F1B58),
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
