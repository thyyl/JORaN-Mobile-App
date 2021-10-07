import 'package:flutter/material.dart';
import 'package:joran_app/Models/FeaturedCompanyModel.dart';
import 'package:joran_app/Screens/JobsModule/JobsCompanyOverviewScreen/components/Background.dart';
import 'package:joran_app/Screens/JobsModule/JobsCompanyOverviewScreen/components/FeaturedJobsIndividual.dart';
import 'package:joran_app/Screens/JobsModule/JobsCompanyOverviewScreen/components/MidLevelBar.dart';
import 'package:joran_app/Screens/JobsModule/JobsCompanyOverviewScreen/components/TopLevelBar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.featuredCompany
  }) : super(key: key);

  final FeaturedCompany featuredCompany;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        children: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 30.0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopLevelBar(),
                SizedBox(height: size.height * 0.025),
                MidLevelBar(
                  companyName: featuredCompany.name,
                  companyLocation: featuredCompany.location,
                  companyBanner: featuredCompany.companyBanner,
                ),
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
                    Column(
                      children: List.generate(featuredCompany.jobList.length, (index) =>
                        FeaturedJobsIndividual(
                          job: featuredCompany.jobList[index],
                          companyLogo: featuredCompany.companyLogo,
                          companyName: featuredCompany.name,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
