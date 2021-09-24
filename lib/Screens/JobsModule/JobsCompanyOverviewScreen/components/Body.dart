import 'package:flutter/material.dart';
import 'package:joran_app/Screens/JobsModule/JobsCompanyOverviewScreen/components/Background.dart';
import 'package:joran_app/Screens/JobsModule/JobsCompanyOverviewScreen/components/FeaturedJobsIndividual.dart';
import 'package:joran_app/Screens/JobsModule/JobsCompanyOverviewScreen/components/MidLevelBar.dart';
import 'package:joran_app/Screens/JobsModule/JobsCompanyOverviewScreen/components/TopLevelBar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 30.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopLevelBar(),
              SizedBox(height: size.height * 0.025),
              MidLevelBar(),
              SizedBox(height: size.height * 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jobs Offered",
                    style: TextStyle(
                        fontFamily: "NunitoSans",
                        color: Color(0XFF76787A),
                        fontSize: 22.5,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: size.height * 0.025),
                  Container(
                    height: size.height * 0.34,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          FeaturedJobsIndividual(),
                          FeaturedJobsIndividual(),
                          FeaturedJobsIndividual(),
                          FeaturedJobsIndividual(),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
