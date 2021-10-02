import 'package:flutter/material.dart';
import 'package:joran_app/Screens/IntroductionScreen/PlanSelectionScreen/components/Background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Plan Selection",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: "NunitoSans",
                        fontSize: 27.5,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    "Please select the plan you want.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: "NunitoSans",
                        fontSize: 22.5,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.1),
              // PlanContainer()
            ],
          ),
        ),
      ),
    );
  }
}
