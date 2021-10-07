import 'package:flutter/material.dart';
import 'package:joran_app/Models/FeaturedCompanyModel.dart';
import 'package:joran_app/Screens/JobsModule/JobsCompanyOverviewScreen/JobsCompanyOverviewScreen.dart';
import 'package:page_transition/page_transition.dart';

class FeaturedCompanyIndividual extends StatelessWidget {
  const FeaturedCompanyIndividual({
    Key? key,
    required this.featuredCompany
  }) : super(key: key);

  final FeaturedCompany featuredCompany;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => Navigator.push(context, PageTransition(
          type: PageTransitionType.fade,
          child: JobsCompanyOverviewScreen(
            featuredCompany: featuredCompany,
          ))
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Container(
          height: size.height * 0.165,
          width: size.width * 0.25,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage(featuredCompany.companyLogo)),
                Padding(
                  padding: const EdgeInsets.only(top: 7.5, bottom: 5.0),
                  child: Text(
                    featuredCompany.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "NunitoSans",
                        fontSize: 15,
                        color: Colors.black
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.15,
                  child: Text(
                    "${featuredCompany.jobList.length} jobs openings",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "NunitoSans",
                        fontSize: 12.5,
                        color: Color(0XFF0075F2)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}