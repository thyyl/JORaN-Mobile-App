import 'package:concentric_transition/page_route.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Screens/IntroductionScreen/PlanSelectionScreen/PlanSelectionScreen.dart';

class TopLevelBar extends StatelessWidget {
  const TopLevelBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}