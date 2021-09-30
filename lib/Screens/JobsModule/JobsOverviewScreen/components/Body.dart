import 'package:flutter/material.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/components/Background.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/components/CarouselAdvertisement.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/components/FeaturedCompanyList.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/components/JobServiceBar.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/components/SearchForm.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesOverviewScreen/ServicesOverviewScreen.dart';
import 'package:page_transition/page_transition.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Background(
          children: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselAdvertisement(),
                SizedBox(height: size.height * 0.025),
                JobServiceBar(
                  serviceFunction: () {
                    Navigator.pushReplacement(context, PageTransition(
                        type: PageTransitionType.fade, child: ServicesOverviewScreen())
                    );
                  },
                ),
                SizedBox(height: size.height * 0.05),
                Container(
                  height: size.height * 0.45,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SearchForm(),
                        SizedBox(height: size.height * 0.05),
                        FeaturedCompanyList(),
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




