import 'package:flutter/material.dart';
import 'package:joran_app/Screens/NotificationModule/NotificationJobApplicationScreen/NotificationJobApplicationScreen.dart';
import 'package:page_transition/page_transition.dart';

class AppliedContainerIndividual extends StatelessWidget {
  const AppliedContainerIndividual({
    Key? key,
    required this.type,
    required this.image,
  }) : super(key: key);

  final String type;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: GestureDetector(
        onTap: () => Navigator.push(context, PageTransition(
            type: PageTransitionType.fade,
            child: NotificationJobApplicationScreen())
        ),
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
                    Row(
                      children: [
                        Container(
                            height: 40,
                            width: 60,
                            child: Image(
                              image: AssetImage(image),
                              fit: BoxFit.fitWidth,
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            type,
                            style: TextStyle(
                                color: Color(0XFF76787A),
                                fontSize: 15,
                                fontFamily: "NunitoSans",
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ],
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