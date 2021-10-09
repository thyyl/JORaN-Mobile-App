import 'package:flutter/material.dart';
import 'package:joran_app/Models/JobModel.dart';
import 'package:joran_app/Provider/MarketJobProvider.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/components/Background.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/components/CarouselAdvertisement.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/components/JobDescription.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/components/JobRequirementContainer.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/components/MidLevelBar.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/components/TopLevelBar.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Job job = Provider.of<MarketJobProvider>(context).individualJob;
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
                  image: job.companyLogo,
                  job: job.title,
                  company: job.companyName,
                  salary: job.salary,
                ),
                SizedBox(height: size.height * 0.03),
                JobRequirementContainer(
                  jobType: job.jobType,
                  experience: job.experience,
                  education: job.educationLevel,
                ),
                JobDescription()
              ],
            ),
          ),
        ),
      ),
    );
  }
}



