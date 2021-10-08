import 'package:flutter/material.dart';

class JobDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Job Description",
          style: TextStyle(
              color: Color(0XFF76787A),
              fontFamily: "NunitoSans",
              fontSize: 20,
              fontWeight: FontWeight.w700
          ),
        ),
        SizedBox(height: size.height * 0.025),
        Container(
          height: size.height * 0.3,
          width: size.width * 0.825,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.white)
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              child: Text(
                "aaa",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Color(0XFF76787A),
                    fontFamily: "NunitoSans",
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                ),
              )
          ),
        ),
      ],
    );
  }
}
