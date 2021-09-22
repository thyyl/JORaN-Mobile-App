import 'package:flutter/material.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/components/Background.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/components/CarouselAdvertisement.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/components/JobDescription.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/components/JobRequirementContainer.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/components/MidLevelBar.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/components/TopLevelBar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: TopLevelBar(),
                ),
                CarouselAdvertisement(),
                SizedBox(height: size.height * 0.025),
                MidLevelBar(
                  image: "assets/logo/USM.png",
                  job: "Cloud Computing Lecturer",
                  location: "University Sains Malaysia, Penang",
                  salary: "120",
                ),
                SizedBox(height: size.height * 0.03),
                JobRequirementContainer(),
                JobDescription()
              ],
            ),
          ),
        ),
      ),
    );
  }
}



