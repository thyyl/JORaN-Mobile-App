import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/FakeData.dart';
import 'package:joran_app/Screens/JobsModule/JobsOverviewScreen/JobsOverviewScreen.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesOverviewScreen/components/Background.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesOverviewScreen/components/CarouselAdvertisement.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesOverviewScreen/components/CategoriesIndividual.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesOverviewScreen/components/JobServiceBar.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesOverviewScreen/components/LowerMidLevelBar.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesOverviewScreen/components/MidLevelBar.dart';
import 'package:joran_app/Screens/ServicesModule/ServicesOverviewScreen/components/SearchForm.dart';
import 'package:joran_app/constants.dart';
import 'package:page_transition/page_transition.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Background(
          children: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CarouselAdvertisement(),
                  SizedBox(height: size.height * 0.025),
                  JobServiceBar(
                    jobFunction: () {
                      Navigator.pushReplacement(context, PageTransition(
                          type: PageTransitionType.fade,
                          child: JobsOverviewScreen(
                            featuredCompanyList: fakeFeaturedCompany,
                          ))
                      );
                    },
                  ),
                  SizedBox(height: size.height * 0.05),
                  MidLevelBar(),
                  SearchForm(),
                  SizedBox(height: size.height * 0.05),
                  LowerMidLevelBar(),
                  SizedBox(height: size.height * 0.025),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(categoryList.length, (index) =>
                        CategoriesIndividual(
                          category: categoryList[index],
                        )
                    ),
                  ),
                  SizedBox(height: size.height * 0.075),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





