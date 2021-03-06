import 'package:flutter/material.dart';

class MidLevelBar extends StatelessWidget {
  const MidLevelBar({
    Key? key,
    required this.job,
    required this.image,
    required this.company,
    required this.salary,
  }) : super(key: key);

  final String job;
  final String image;
  final String company;
  final String salary;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.white)
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              company,
              style: TextStyle(
                  color: Color(0XFF76787A),
                  fontFamily: "NunitoSans",
                  fontSize: 20,
                  fontWeight: FontWeight.w700
              ),
            ),
            Text(
              job,
              style: TextStyle(
                  color: Color(0XFF76787A),
                  fontFamily: "NunitoSans",
                  fontSize: 15,
                  fontWeight: FontWeight.w600
              ),
            ),
            Text(
              "RM ${salary}k / year",
              style: TextStyle(
                  color: Color(0XFF76787A),
                  fontFamily: "NunitoSans",
                  fontSize: 15,
                  fontWeight: FontWeight.w600
              ),
            )
          ],
        )
      ],
    );
  }
}