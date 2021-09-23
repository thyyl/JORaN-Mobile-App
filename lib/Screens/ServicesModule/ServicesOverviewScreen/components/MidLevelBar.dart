import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesAddServiceScreen/ServicesAddServiceScreen.dart';
import 'package:page_transition/page_transition.dart';

class MidLevelBar extends StatelessWidget {
  const MidLevelBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Popular Services",
            style: TextStyle(
              color: Color(0XFF76787A),
              fontFamily: "NunitoSans",
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(context, PageTransition(
                type: PageTransitionType.fade, child: ServicesAddServiceScreen())
            ),
            child: Text(
              "Add Services",
              style: TextStyle(
                color: Color(0XFF5783C3),
                fontFamily: "NunitoSans",
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}