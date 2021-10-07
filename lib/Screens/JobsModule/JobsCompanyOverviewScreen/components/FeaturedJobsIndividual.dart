import 'package:flutter/material.dart';
import 'package:joran_app/Models/JobModel.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/JobsDetailScreen.dart';
import 'package:page_transition/page_transition.dart';

class FeaturedJobsIndividual extends StatelessWidget {
  const FeaturedJobsIndividual({
    Key? key,
    required this.job,
    required this.companyLogo,
    required this.companyName,
  }) : super(key: key);

  final Job job;
  final String companyLogo;
  final String companyName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => Navigator.push(context, PageTransition(
          type: PageTransitionType.fade,
          child: JobsDetailScreen()
      )
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Container(
          height: size.height * 0.16,
          width: size.width * 0.8,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.5, vertical: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(companyLogo),
                      fit: BoxFit.contain,
                    ),
                    Text(
                      companyName,
                      style: TextStyle(
                        color: Color(0XFF76787A),
                        fontSize: 20,
                        fontFamily: "NunitoSans",
                        fontWeight: FontWeight.w800
                      ),
                    )
                  ],
                ),
                SizedBox(height: 17.5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: size.width * 0.3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            job.title,
                            style: TextStyle(
                                color: Color(0XFF76787A),
                                fontSize: 15,
                                fontFamily: "NunitoSans",
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          Text(
                            "RM ${job.salary}k / year",
                            style: TextStyle(
                                color: Color(0XFF76787A),
                                fontSize: 15,
                                fontFamily: "NunitoSans",
                                fontWeight: FontWeight.w700
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: size.width * 0.3,
                      child: Text(
                        job.location,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color(0XFF76787A),
                            fontSize: 12.5,
                            fontFamily: "NunitoSans",
                            fontWeight: FontWeight.w600
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