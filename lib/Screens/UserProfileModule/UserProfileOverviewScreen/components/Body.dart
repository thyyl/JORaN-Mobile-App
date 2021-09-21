import 'package:flutter/material.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/components/Background.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/components/MenuContainer.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileOverviewScreen/components/UserProfileMidLevel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "My Profile",
                  style: TextStyle(
                    color: Color(0XFF76787A),
                    fontSize: 25,
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.075),
              UserProfileMidLevel(),
              SizedBox(height: size.height * 0.05),
              MenuContainer()
            ],
          ),
        ),
      )
    );
  }
}





