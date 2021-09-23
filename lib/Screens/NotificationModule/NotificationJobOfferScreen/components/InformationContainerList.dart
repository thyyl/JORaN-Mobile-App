import 'package:flutter/material.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobOfferScreen/components/InformationContainerIndividual.dart';

class InformationContainerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Information",
          style: TextStyle(
              fontFamily: "NunitoSans",
              color: Color(0XFF76787A),
              fontSize: 22.5,
              fontWeight: FontWeight.w700
          ),
        ),
        SizedBox(height: size.height * 0.01),
        Container(
          height: size.height * 0.15,
          width: size.width * 0.93,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                InformationContainerIndividual(
                  image: "assets/pictures/time.png",
                  title: "Full Time",
                ),
                InformationContainerIndividual(
                  image: "assets/pictures/experience.png",
                  title: "10+ years",
                ),
                InformationContainerIndividual(
                  image: "assets/pictures/graduate.png",
                  title: "PhD Level",
                ),
                InformationContainerIndividual(
                  image: "assets/pictures/salary.png",
                  title: "RM 120k",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}