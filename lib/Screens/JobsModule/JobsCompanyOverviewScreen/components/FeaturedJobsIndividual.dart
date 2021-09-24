import 'package:flutter/material.dart';
import 'package:joran_app/Screens/JobsModule/JobsDetailScreen/JobsDetailScreen.dart';
import 'package:page_transition/page_transition.dart';

class FeaturedJobsIndividual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => Navigator.push(context, PageTransition(
          type: PageTransitionType.fade, child: JobsDetailScreen()
      )
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Container(
          height: size.height * 0.15,
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
                    Container(
                        height: 40,
                        width: 60,
                        child: Image(
                          image: AssetImage("assets/logo/USM.png"),
                          fit: BoxFit.fitWidth,
                        )
                    ),
                    Text(
                      "3 days ago",
                      style: TextStyle(
                          color: Color(0XFF76787A),
                          fontSize: 15,
                          fontFamily: "NunitoSans",
                          fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
                SizedBox(height: 17.5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cloud Computing Lecturer",
                          style: TextStyle(
                              color: Color(0XFF76787A),
                              fontSize: 12.5,
                              fontFamily: "NunitoSans",
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          "RM 120k / year",
                          style: TextStyle(
                              color: Color(0XFF76787A),
                              fontSize: 12.5,
                              fontFamily: "NunitoSans",
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: size.width * 0.3,
                      child: Text(
                        "University Sains Malaysia, Penang",
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