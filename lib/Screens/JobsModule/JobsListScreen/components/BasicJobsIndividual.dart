import 'package:flutter/material.dart';

class BasicJobsIndividual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.175,
      width: size.width * 0.375,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.5, vertical: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 40,
                    width: 60,
                    child: Image(
                      image: AssetImage("assets/logo/USM.png"),
                      fit: BoxFit.fitWidth,
                    )
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cloud Computing Lecturer",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0XFF76787A),
                      fontSize: 12.5,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  "RM 120k / year",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0XFF76787A),
                      fontSize: 12.5,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w600
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
