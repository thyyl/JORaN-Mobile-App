import 'package:flutter/material.dart';
import 'package:joran_app/Screens/ServicesModule/ServiceDetailScreen/components/RatingsRow.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileServiceScreen/components/Background.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileServiceScreen/components/ServiceContainerList.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileServiceScreen/components/TopLevelBar.dart';
import 'package:joran_app/Screens/UserProfileModule/UserProfileServiceScreen/components/UserProfileMidLevel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TopLevelBar(),
              SizedBox(height: size.height * 0.05),
              UserProfileMidLevel(),
              SizedBox(height: size.height * 0.025),
              RatingsRow(),
              SizedBox(height: size.height * 0.025),
              ServiceContainerList()
            ],
          ),
        ),
      ),
    );
  }
}

