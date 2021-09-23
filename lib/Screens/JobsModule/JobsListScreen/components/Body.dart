import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Screens/JobsModule/JobsListScreen/components/Background.dart';
import 'package:joran_app/Screens/JobsModule/JobsListScreen/components/BasicJobsList.dart';
import 'package:joran_app/Screens/JobsModule/JobsListScreen/components/CarouselAdvertisement.dart';
import 'package:joran_app/Screens/JobsModule/JobsListScreen/components/FeaturedJobsList.dart';
import 'package:joran_app/Screens/JobsModule/JobsListScreen/components/JobTitleResults.dart';
import 'package:joran_app/Screens/JobsModule/JobsListScreen/components/TopLevelBar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: Padding(
          padding: const EdgeInsets.only(left: 20.0, right:20, top: 30.0),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 15.0),
                  child: TopLevelBar(),
                ),
                CarouselAdvertisement(),
                SizedBox(height: size.height * 0.025),
                // JobServiceBar(
                //   serviceFunction: () {
                //     Navigator.pushReplacement(context, PageTransition(
                //         type: PageTransitionType.fade, child: ServicesOverviewScreen())
                //     );
                //   }
                // ),
                JobTitleResults(
                  job: "Cloud Computing",
                  results: "256",
                ),
                Container(
                  height: size.height * 0.475,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        FeaturedJobsList(),
                        BasicJobsList(),
                      ],
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}


